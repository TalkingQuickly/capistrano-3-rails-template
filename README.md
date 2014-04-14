# Capistrano 3 Rails Config

## Overview

This is a sample configuration for deploying Ruby on Rails applications with Capistrano 3.1 including Zero Downtime Deployment with Unicorn and Sidekiq background Workers.

## Usage

See
<http://www.talkingquickly.co.uk/2014/01/deploying-rails-apps-to-a-vps-with-capistrano-v3/>
for a tutorial on usage.

Or for more details, this is also the example configuration used in the
book Reliably Deploying Rails Applications available on Leanpub:
<https://leanpub.com/deploying_rails_applications>

## Minimal Requirements

You should have the following in your Gemfile:

    gem 'capistrano', '~> 3.1.0'

    # rails specific capistrano funcitons
    gem 'capistrano-rails', '~> 1.1.0'

    # integrate bundler with capistrano
    gem 'capistrano-bundler'

    # if you are using RBENV
    gem 'capistrano-rbenv', "~> 2.0" 

    # Use Unicorn as our app server
    gem 'unicorn'

