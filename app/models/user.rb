class User < ApplicationRecord
  has_many :shares
  has_many :commons, through: :shares
  belongs_to :place
  has_one :stat
  # #
  # VALID_DEPTO_REGEX = /\A[a-zA-Z\d]{3,7}\z/
  # validates :depto, presence: true, length: { maximum: 5}, format: { with: VALID_DEPTO_REGEX },
  #                   uniqueness: { case_sensitive: false}
  # validates :condo, presence: true, length: { maximum: 10}
  has_secure_password
  # validates :password, presence: true, length: { minimum: 6 }

end

#prueba para commiteog
