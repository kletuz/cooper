class Stat::CfcQuery < Stat
  # Include step validations here
  validates :cfc_1,  presence: true, inclusion: { in: (1..7) } 
  validates :cfc_2,  presence: true, inclusion: { in: (1..7) } 
  validates :cfc_3,  presence: true, inclusion: { in: (1..7) } 
  validates :cfc_4,  presence: true, inclusion: { in: (1..7) } 
  validates :cfc_5,  presence: true, inclusion: { in: (1..7) } 
  validates :cfc_6,  presence: true, inclusion: { in: (1..7) } 
  validates :cfc_7,  presence: true, inclusion: { in: (1..7) } 
  validates :cfc_8,  presence: true, inclusion: { in: (1..7) } 
  validates :cfc_9,  presence: true, inclusion: { in: (1..7) } 
  validates :cfc_10, presence: true, inclusion: { in: (1..7) } 
  validates :cfc_11, presence: true, inclusion: { in: (1..7) } 
  validates :cfc_12, presence: true, inclusion: { in: (1..7) } 
  validates :cfc_13, presence: true, inclusion: { in: (1..7) } 
  validates :cfc_14, presence: true, inclusion: { in: (1..7) } 
  # Include step after_initialize attribute default settings here

  # Include step after_save changes here

  def editable?
    true
  end
end
