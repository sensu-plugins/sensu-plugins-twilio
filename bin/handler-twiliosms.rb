#!/usr/bin/env ruby
#
# Sensu Handler: twilio
#
# This handler formats alerts as SMSes and sends them off to a pre-defined recipient.
#
# Copyright 2012 Panagiotis Papadomitsos <pj@ezgr.net>
#
# Released under the same terms as Sensu (the MIT license); see LICENSE
# for details.

require 'sensu-handler'
require 'twilio-ruby'
require 'rest-client'
require 'json'

class TwilioSMS < Sensu::Handler
  def short_name
    @event['client']['name'] + '/' + @event['check']['name']
  end

  def action_to_string
    @event['action'].eql?('resolve') ? 'RESOLVED' : 'ALERT'
  end

  def handle
    account_sid = settings['twiliosms']['sid']
    auth_token = settings['twiliosms']['token']
    from_number = settings['twiliosms']['number']
    candidates = settings['twiliosms']['recipients']
    short = settings['twiliosms']['short'] || false
    disable_ok = settings['twiliosms']['disableOk'] || false

    return if @event['action'].eql?('resolve') && disable_ok

    raise 'Please define a valid Twilio authentication set to use this handler' unless account_sid && auth_token && from_number
    raise 'Please define a valid set of SMS recipients to use this handler' if candidates.nil? || candidates.empty?

    recipients = []
    candidates.each do |mobile, candidate|
      next unless (candidate['sensu_roles'].include?('all') ||
          (@event['check']['name'].eql?('keepalive') && candidate['sensu_roles'].include?('keepalive')) ||
          (@event['check']['subscribers'] &&
            (candidate['sensu_roles'] & @event['check']['subscribers']).size > 0) || # rubocop:disable Style/ZeroLengthPredicate
          candidate['sensu_checks'].include?(@event['check']['name'])) &&
                  (candidate['sensu_level'].include? @event['check']['status']) || (@event['check']['status'] == 0)
      recipients << mobile
    end

    message = if short
                "Sensu #{action_to_string}: #{@event['check']['output']}"
              else
                "Sensu #{action_to_string}: #{short_name} (#{@event['client']['address']}) #{@event['check']['output']}"
              end

    message[157..message.length] = '...' if message.length > 160

    twilio = Twilio::REST::Client.new(account_sid, auth_token)
    recipients.each do |recipient|
      begin
        twilio.account.messages.create(
          from: from_number,
          to: recipient,
          body: message
        )
        puts "Notified #{recipient} for #{action_to_string}"
      rescue => e
        puts "Failure detected while using Twilio to notify on event: #{e.message}"
      end
    end
  end
end
