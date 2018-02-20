class Outcome < ApplicationRecord
	has_many :transactions
	has_many :commons, through: :transactions
end
