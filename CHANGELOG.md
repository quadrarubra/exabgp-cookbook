# 1.0.7 / 2015-06-21

## Enhancements

* Added a service notifier. Added check to create /etc/exabgp if it's missing. 
  Do not change the last digit to 0 for unicast addresses

# 1.0.6 / 2015-06-21

## Enhancements

* Fixed cookbook per food critic 

# 1.0.5 / 2015-06-21

## Enhancements

* Added version to metadata.rb

# 1.0.4 / 2015-06-21

## Enhancements

* Added a new installtion options - ppa. Separated install into source, pip and ppa.
  Fixed cookbook per rubocop

# 1.0.3 / 2015-06-21

## Enhancements

* Added in a new attributes to allow changing the network prefixes.

# 1.0.2 / 2015-02-21

## Enhancements

* Added in a new attribute to allow for disabling the static route in the
  exabgp config template

# 1.0.1 / 2015-01-23

## Bug Fixes

* Sync to master for now to resolve a parse bug with incorrect community
  information

# 1.0.0 / 2015-01-23

## Cleanup

* Updated README and LICENSE, much more to come in the next few releases

## Breaking Changes

* Changed source install to point to the GitHub repository. They moved over
  a year ago, it's time we moved too. This also means we use git and dropped
  the mercurial cookbook dependency
* Defaulted to latest release at the time (3.4.7)

# 0.10.0 / 2015-01-19

## Enhancements

* Adding berkshelf integration

# 0.9.0 / 2013-07-11

* Initial release of exabgp

