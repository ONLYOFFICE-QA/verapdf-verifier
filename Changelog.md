# Change log

## unreleased (master)

### New Features

* Actualize `VeraPDF` to 1.14.8
* Use ruby 2.7 as base of Dockerfile
* Add default `rake` task for tests
* Update bundler in `gems.locked` to v2.0

### Refactor

* `Verapdf` is a class instead of helper

### Fixes

* Remove temp file after parsing immediately
* Decrease size of image by using headless java
