Devise.setup do |config|
  if Rails.env.development?
    key = SecureRandom.hex
  else 
    key = ENV['DEVISE_SECRE