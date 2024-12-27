# Change log

## unreleased (master)

### New Features

* Use `ruby-3.4` as application base
* Enable `branch` coverage in `simplecov` config (and check in CI)
* Add `GitHub Action` config to pushing image to Docker Hub
* Add `ruby-3.1`, `ruby-3.2` in CI
* Add check that container is alive in CI
* Add `yamllint` check in CI
* Check `dependabot` at 8AM Moscow
* Add `dependabot` check for `GitHub Actions`

### Changes

* Fix minor rubocop issue after upgrade rubocop to `v1.24.0`
* Remove `ruby-2.5`, `ruby-2.6`, `ruby-2.7` from CI since it's EOLed
* Remove `codeclimate` config, since we don't use it any more
* Remove `ruby-3.0`, `ruby-3.1` and `ruby-3.2`
  from CI since we use `ruby-3.3` as base
* Migrate app to `sinatra-4`
* Upgrade `vera-pdf` to `1.27.102`

### Fixes

* Fix `nodejs` version in CI

## 1.1.0 (2020-12-29)

### New Features

* Add support of `rubocop-performance` and `rubocop-rake`
* Add `ruby-3.0` to CI
* Add `rake check` task to check result of working service
* Use `ruby:3.0.0-alpine` as Docker base image

### Fixes

* Add `markdownlint` config with allowed MD024

### Changes

* Change organization name in readme
* Update `verapdf` from 1.14.8 to 1.16.1
* Remove support of `codecov`
* Optimize `Dockerfile` to have less layers

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
