class Stat::SvoQuery < Stat
  # Include step validations here
  validates :svo_1, presence: true, inclusion: { in: (1..9) }
  validates :svo_2, presence: true, inclusion: { in: (1..9) }
  validates :svo_3, presence: true, inclusion: { in: (1..9) }
  validates :svo_4, presence: true, inclusion: { in: (1..9) }
  validates :svo_5, presence: true, inclusion: { in: (1..9) }
  validates :svo_6, presence: true, inclusion: { in: (1..9) }

  # Include step after_initialize attribute default settings here

  # Include step after_save changes here

  def editable?
    true
  end
end
