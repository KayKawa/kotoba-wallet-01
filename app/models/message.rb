class Message < ApplicationRecord
  belongs_to :buy
  belongs_to :user
  has_many :messages
end
