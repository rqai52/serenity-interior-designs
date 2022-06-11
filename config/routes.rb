
Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'api/auth'
  namespace :api do
    resources :coins
  end

  #Do not place any routes below this one
  if Rails.env.production?
    get '*other', to: 'static#index'
  end

  match '/api/auth/:provider/callback', to: 'sessions#create', via: [:get, :post]
end