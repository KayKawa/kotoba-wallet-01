class Message < ApplicationRecord
  belongs_to :buy
  has_many :messages
  belongs_to :giver, class_name: 'User', foreign_key: 'giver_id'
  belongs_to :taker, class_name: 'User', foreign_key: 'taker_id'
end
