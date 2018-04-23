## Sensu-Plugins-twilio

[![Build Status](https://travis-ci.org/sensu-plugins/sensu-plugins-twilio.svg?branch=master)](https://travis-ci.org/sensu-plugins/sensu-plugins-twilio)
[![Gem Version](https://badge.fury.io/rb/sensu-plugins-twilio.svg)](http://badge.fury.io/rb/sensu-plugins-twilio)
[![Code Climate](https://codeclimate.com/github/sensu-plugins/sensu-plugins-twilio/badges/gpa.svg)](https://codeclimate.com/github/sensu-plugins/sensu-plugins-twilio)
[![Test Coverage](https://codeclimate.com/github/sensu-plugins/sensu-plugins-twilio/badges/coverage.svg)](https://codeclimate.com/github/sensu-plugins/sensu-plugins-twilio)
[![Dependency Status](https://gemnasium.com/sensu-plugins/sensu-plugins-twilio.svg)](https://gemnasium.com/sensu-plugins/sensu-plugins-twilio)

## Functionality

## Files
 * bin/check-num-recordings.rb
 * bin/handler-twiliosms.rb

## Usage
twilio_handler.json
```
{
  "twiliosms":{
    "token":"a9d8ag98daf98ga9fd8g", //Twilio Token
    "number":"+111111111", //Twilio Phone Numbewr
    "sid":"AC0ds98gd098gf09d8fg", //Twilio SID
    "short": "true", //Optional to send shorter SMS alerts with less details
    "recipients":{
      "+11111111111": {
      },
      "+11111222222": {
      }
    }
  }
}
```

check.json
```
{
  "checks": {
    "website_check": {
      "command": "check-http.rb ",
      ...
      "interval": 15, //Interval between checks
      "occurrences": 2, //Number of check failures before alerting
      "refresh": 300, //Number of seconds before notification if check is still failing
      "handlers": ["twiliosms"]
    }
  }
}

## Installation

[Installation and Setup](http://sensu-plugins.io/docs/installation_instructions.html)

## Notes
