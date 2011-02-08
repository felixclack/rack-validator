Rack::Validator
===============

Ensure your html is valid. Use it as middleware in your Rails app.

This is the first line of defence against invalid html.

In your Gemfile:
    config.gem 'rack-validator', :group => :development

then in your development.rb:

    require 'rack/validator'

    config.middleware.use Rack::Validator

