#!/usr/bin/env bash

## These source-code repositories are commonly used, so we'll declare them once.
##
## To declare more repositories, add more calls to "git_cache_setup" or
## "svn_cache_setup" in this file OR in your build's "download.sh".
##
## GIT NOTES:
##  - To warm-up the cache, run "git_cache_setup <remote-url> <local-cache>"
##    at the beginning of the build process.
##  - To checkout the code, use "git clone file://<local-cache>"
##  - After download completes, we automatically change the origin URL
##    by running "git_cache_deref_remotes".
## SVN NOTES:
##  - To warm-up the cache, run "svn_cache_setup" at the beginning
##    of the build process.
##  - To checkout the code, use "svn_cache_clone" (instead of "svn co")

git_cache_setup "https://github.com/civicrm/civicrm-backdrop.git"            "$CACHE_DIR/civicrm/civicrm-backdrop.git"
git_cache_setup "https://github.com/civicrm/civicrm-core.git"                "$CACHE_DIR/civicrm/civicrm-core.git"
git_cache_setup "https://github.com/civicrm/civicrm-drupal.git"              "$CACHE_DIR/civicrm/civicrm-drupal.git"
git_cache_setup "https://github.com/civicrm/civicrm-drupal-8.git"            "$CACHE_DIR/civicrm/civicrm-drupal-8.git"
git_cache_setup "https://github.com/civicrm/civicrm-packages.git"            "$CACHE_DIR/civicrm/civicrm-packages.git"
git_cache_setup "https://github.com/civicrm/civicrm-joomla.git"              "$CACHE_DIR/civicrm/civicrm-joomla.git"
git_cache_setup "https://github.com/civicrm/civicrm-wordpress.git"           "$CACHE_DIR/civicrm/civicrm-wordpress.git"
git_cache_setup "https://github.com/civicrm/civicrm-demo-wp.git"             "$CACHE_DIR/civicrm/civicrm-demo-wp.git"
git_cache_setup "https://github.com/civicrm/api4.git"                        "$CACHE_DIR/civicrm/api4.git"

git_cache_setup "https://lab.civicrm.org/extensions/civirules.git" "$CACHE_DIR/civicrm/org.civicoop.civirules.git"
git_cache_setup "https://lab.civicrm.org/extensions/civisualize.git" "$CACHE_DIR/TechToThePeople/civisualize.git"
git_cache_setup "https://lab.civicrm.org/extensions/cividiscount.git" "$CACHE_DIR/civicrm/org.civicrm.module.cividiscount.git"
git_cache_setup "https://github.com/civicrm/org.civicrm.contactlayout.git" "$CACHE_DIR/civicrm/org.civicrm.contactlayout.git"
