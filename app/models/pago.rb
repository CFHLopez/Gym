class Pago < ActiveRecord::Base
  self.table_name = 'pagos'
  belongs_to :alumno

  validates :monto, presence: true, numericality: true
end
