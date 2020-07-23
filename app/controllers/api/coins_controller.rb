class Api::CoinsController < ApplicationController

  before_action :set_coin, only: [:update, :destroy]
  BASE_URL = 'https://pro-api.coinmarketcap.com/v1/cryptocurrency/listings/latest?CMC'

  def index
    listings = HTTParty.get("#{BASE_URL}")['data'].values
    user_coins = current_user.coins
    user_coins.each do |coin|
      res_coin = listings.find { |c| c['id'] === coin.cmc_id }
      coin.update(price: res_coin['quote