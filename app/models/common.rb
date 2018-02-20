class Common < ApplicationRecord
  has_many :shares
  has_many :users, through: :shares
  belongs_to :place
  has_many :transactions
  has_many :outcomes, through: :transactions
end
