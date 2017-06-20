class Administrador < ActiveRecord::Base
	has_many :profesores
	has_many :planes
	has_many :clases

	validates :nombre, presence: true, length: { minimum: 2 }
	validates :edad, presence: true, numericality: true, on: :update
end
