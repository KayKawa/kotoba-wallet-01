class Purchase < ApplicationRecord
  belongs_to :wallet
  belongs_to :transaction
end
