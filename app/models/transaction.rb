class Transaction < ApplicationRecord
  belongs_to :common
  belongs_to :outcome
end
