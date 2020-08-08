class Coin < ApplicationRecord
    validates_uniquieness_of :cmc_id, :name, :symbol, { case_sensitive: false }