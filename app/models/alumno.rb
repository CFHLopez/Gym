class Alumno < ActiveRecord::Base
	belongs_to :plan
	has_many :clases
	has_many :pagos

	validates :nombre, presence: true, length: { minimum: 2 }
	validates :sexo, presence: true
	validates :plan_id, presence: true
end
