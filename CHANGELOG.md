#Change Log
This project adheres to [Semantic Versioning](http://semver.org/).

This CHANGELOG follows the format listed at [Keep A Changelog](http://keepachangelog.com/)

## [Unreleased]
### Added
- Ruby 2.4.1 testing

## [1.0.1] - 2018-04-23
- Removed built in handler filtering. See http://bit.ly/sensu-plugin
- Updated README to show new settings and gave example check with new filtering parameters.
 
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
