Devise.setup do |config|
  if Rails.env.development?
    key = 