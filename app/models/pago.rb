class Pago < ActiveRecord::Base
  belongs_to :alumnos

  validates :monto, presence: true, numericality: true
end
