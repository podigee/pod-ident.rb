#!/bin/sh

set -e

# Install dependencies
gem update bundler

bundle install --path vendor/bundle --jobs 4 --retry 3

bin/parse-rules
