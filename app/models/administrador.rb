class Administrador < ActiveRecord::Base
	has_many :profesores
	has_many :planes
	has_many :clases

	validates :nombre, presence: true
	validates :edad, presence: true, length: {minimum:15, maximun:50}
end
