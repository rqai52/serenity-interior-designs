require "#{Rails.root}/lib/listen"
include Listen
Rails.application.configure do
  config.action_mailer.default_url_options = { host: "localhost: 3001" } 
  # Settings specified here will take precedence over those in config/application.rb.

  # In the development environment your application's code is reloaded on
  # e