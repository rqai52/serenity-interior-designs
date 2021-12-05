require "#{Rails.root}/lib/listen"
include Listen
Rails.application.configure do
  config.action_mailer.default_url_options = { host: "localhost: 3001" } 
  # Settings specified here will take precedence over those in config/application.rb.

  # In the development environment your application's code is reloaded on
  # every request. This slows down response time but is perfect for development
  # since you don't have to restart the web server when you make code changes.
  config.cache_classes = false

  # Do not eager load code on boot.
  config.e