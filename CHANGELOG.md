#Change Log
This project adheres to [Semantic Versioning](http://semver.org/).

This CHANGELOG follows the format listed at [Keep A Changelog](http://keepachangelog.com/)

## [Unreleased]
### Added
- Bump sensu-plugin runtime dep to 3.0 with Sensu Go to Sensu Core 1.x migration option (@jspaleta)
- Ruby 2.4.1 testing
- Ruby 2.5.1 testing (@jspaleta)
- Added --verbose cmdline switch to aid in local testing
- Added --disable_send cmdline switch to aid in local testing

### Breaking Changes
- Dropped 2.0 ruby testing (@jspaleta)
- Dropped 2.1 ruby testing (@jspaleta)
- Dropped 2.2 ruby testing (@jspaleta)
- Dropped rest-client runtime dep, no longer needed (@jspaleta)
- Set required_ruby_version in gemspec to >= 2.3.0 (@jspaleta)

### Changed
- Bump twilio runtime dep to 5.17.0 (@jspaleta)
- Bump codeclimate development dep to 1.0 (@jspaleta)
- Bump rake development dep to 12.3 (@jspaleta)
- Bump rubocop development dep to 0.61.1 (@jspaleta)
- Bump yard development dep to 0.9.11 (@jspaleta)
- Added explict rdoc development dep needed for ruby 2.5.1 (@jspaleta)
- Updated .rubocop.yml to disable unneeded warning messages (@jspaleta)
- Updated Rakefile and introduce quick task (@jspaleta)
- Updated .travis.yml to use quick task (@jspaleta)
- Clean up robucop warnings (@jspaleta)
- Updated README.md with clearer explanation concerning config


## [1.0.0] - 2016-05-24
### Added
- Ruby 2.3.0 support

### Removed
- Ruby 1.9.3 support

### Fixed
- handle case when event data does not have a subscribers property (Enables keepalive event handling support)

### Changed
- update to rubocop 0.40 and cleanup
- update to `twilio-ruby` 4.11.1

## [0.0.4] - 2016-04-26
### Fixed
- add functionality to disable resolve alerts

## [0.0.3] - 2015-07-14
### Changed
- updated sensu-plugin gem to 1.2.0

## [0.0.2] - 2015-06-03
### Fixed
- added binstubs

### Changed
- removed cruft from /lib

## 0.0.1 - 2015-05-20
### Added
- initial release

[Unreleased]: https://github.com/sensu-plugins/sensu-plugins-twilio/compare/1.0.0...HEAD
[1.0.0]: https://github.com/sensu-plugins/sensu-plugins-twilio/compare/0.0.4...1.0.0
[0.0.4]: https://github.com/sensu-plugins/sensu-plugins-twilio/compare/0.0.3...0.0.4
[0.0.3]: https://github.com/sensu-plugins/sensu-plugins-twilio/compare/0.0.2...0.0.3
[0.0.2]: https://github.com/sensu-plugins/sensu-plugins-twilio/compare/0.0.1...0.0.2
