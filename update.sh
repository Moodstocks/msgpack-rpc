#!/bin/bash

git pull origin
pushd ruby
  rm -f pkg/msgpack-rpc*.gem
  rake build
  rvmsudo gem install pkg/msgpack-rpc*.gem
popd
