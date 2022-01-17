# ----------------------------------------------------------------------------
#
# Package       : crass
# Version       : 1.0.3
# Source repo   : https://github.com/rgrove/crass
# Tested on     : UBI: 8.5
# Language      : Ruby
# Travis-Check  : True
# Script License: Apache License 2.0
# Maintainer's  : Balavva Mirji <Balavva.Mirji@ibm.com>
#
#
# Disclaimer: This script has been tested in root mode on given
# ==========  platform using the mentioned version of the package.
#             It may not work as expected with newer versions of the
#             package and/or distribution. In such case, please
#             contact "Maintainer" of this script.
#
# ----------------------------------------------------------------------------
#!/bin/bash

set -ex

PACKAGE_NAME=crass
PACKAGE_VERSION=${1:-v1.0.3}            
PACKAGE_URL=https://github.com/rgrove/crass

yum install git ruby ruby-devel -y
gem install bundle

git clone $PACKAGE_URL
cd $PACKAGE_NAME
git checkout $PACKAGE_VERSION

export BUNDLE_GEMFILE=$PWD/Gemfile

bundle install
bundle exec rake