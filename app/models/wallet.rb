class Wallet < ApplicationRecord
  belongs_to :user
  has_one :transaction
  has_many :purchases
end
