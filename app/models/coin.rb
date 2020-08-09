class Coin < ApplicationRecord
    validates_uniquieness_of :cmc_id, :name, :symbol, { case_sensitive: false }
    validates_presence_of :cmc_id, :name, :symbol

    has_many :watched_coins, dependent :destroy
    has_many :users, through: :watched_coi