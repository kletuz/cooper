class Stat::BasicInfo < Stat
  # Include step validations here
  # estan dificultando la aceptación de numros, aunque no había cambiado la box, por una box de texto
  #!!ojo!!
  # enum gender:   [:masculino, :femenino, :otro]
  # enum c_status: [:soltero, :casado, :unión_libre, :divorciado, :viudo]
  #estos datos deben ser declarados en las vistas para que tenga sentido el enum
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
	validates :email, length: {maximum: 255},
										format: { with: VALID_EMAIL_REGEX },
										uniqueness: { case_sensitive: false},
                    allow_blank: true
  validates :gender,   presence: true, inclusion: { in: (0..2) }
  validates :b_year,   presence: true, inclusion: { in: (1900..2000) }
  validates :c_status, presence: true, inclusion: { in: (0..4) }


  # Include step after_initialize attribute default settings here

  # Include step after_save changes here

  def editable?
    true
  end
end
