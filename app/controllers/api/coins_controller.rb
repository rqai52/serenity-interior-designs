class Api::CoinsController < ApplicationController

  before_action :set_coin, only: [:update, :destroy]
  BASE_URL = 'ht