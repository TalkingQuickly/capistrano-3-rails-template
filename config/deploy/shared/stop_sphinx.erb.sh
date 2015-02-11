#!/bin/bash
export PATH="$PATH:/usr/local/bin"

cd <%= fetch(:deploy_to) %>/current && RAILS_ENV=production bundle exec rake ts:stop > log/sphinx.log 2>&1