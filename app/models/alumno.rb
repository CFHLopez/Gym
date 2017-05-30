class Alumno < ActiveRecord::Base
  self.table_name = 'alumnos'
	belongs_to :plan
	has_many :clases
  has_many :pagos

	validates :nombre, presence: true
	validates :sexo, presence: true
end
