#!/bin/bash

git pull origin
cd ruby
rm -f pkg/msgpack-rpc*.gem
rake build
sudo gem install pkg/msgpack-rpc*.gem
