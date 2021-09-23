class Buy < ApplicationRecord
  belongs_to :user
  belongs_to :wallet
  belongs_to :statement
end
