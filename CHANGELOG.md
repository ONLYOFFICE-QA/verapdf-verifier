# Change log

## unreleased (master)

### New Features

* Add support of `rubocop-performance` and `rubocop-rake`
* Add `ruby-3.0` to CI
* Add `rake check` task to check result of working service

### Fixes

* Add `markdownlint` config with allowed MD024

### Changes

* Change organization name in readme
* Update `verapdf` from 1.14.8 to 1.16.1
* Remove support of `codecov`

## 1.0.0 (2020-09-08)

### New Features

* Actualize `VeraPDF` to 1.14.8
* Use ruby 2.7 as base of Dockerfile
* Add default `rake` task for tests
* Update bundler in `gems.locked` to v2.0
* Use `alpine` as base image for service.
* Use Github Actions instead of Travis-CI
* Add `rake` test dependency
* Add `yard` development dependency

### Refactor

* `Verapdf` is a class instead of helper

### Fixes

* Remove temp file after parsing immediately
* Decrease size of image by using headless java

### Changes

* Drop support of ruby 2.4 since it's EOLed
* Allow failures on `ruby-head` in CI
* CHANGELOG.md now all capital letters
