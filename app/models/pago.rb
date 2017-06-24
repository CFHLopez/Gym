class Pago < ActiveRecord::Base
  has_many :alumnos

  validates :monto, presence: true, numericality: true
  validates :alumno_id, presence: true
end
