#! /bin/sh

cd <%= fetch(:deploy_to) %>/current && RAILS_ENV=production bundle exec rake ts:index
cd <%= fetch(:deploy_to) %>/current && RAILS_ENV=production bundle exec rake ts:start > log/sphinx.log 2>&1



