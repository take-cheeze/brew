#!/bin/bash

set -e

cd $(dirname $0)

if [ ! -d mruby ] ; then
  git clone https://github.com/mruby/mruby.git
fi

pushd mruby

MRUBY_CONFIG=$PWD/../brew_config.rb ./minirake -j4  all test

popd
