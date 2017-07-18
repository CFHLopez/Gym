class Alumno < ActiveRecord::Base
	belongs_to :plan
	has_many :clases
	has_many :pagos

	validates :nombre, presence: true, length: { minimum: 2 }
	validates :sexo, presence: true
	validates :edad, presence: true, numericality: true
	validates :plan_id, presence: true
	validates :rut, rut: true, presence: true, uniqueness: true
end
