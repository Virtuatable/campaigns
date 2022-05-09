require 'dotenv'
environment = Dotenv.load['RACK_ENV'] || :development

require 'bundler'
Bundler.require environment

Mongoid.load!('config/mongoid.yml', environment)

require './controllers/campaigns'

run Controllers::Campaigns.new