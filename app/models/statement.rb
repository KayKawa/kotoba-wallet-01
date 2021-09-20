class Statement < ApplicationRecord
  belongs_to :wallet
  has_many :purchases
end
