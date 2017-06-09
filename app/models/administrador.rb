class Administrador < ActiveRecord::Base
	has_many :profesores
	has_many :planes
	has_many :clases

	validates :nombre, presence: true
	validates :edad, presence:true, numericality: true
	validates :email, uniqueness: {case_sensitive: false ,message: "ya esta registrado"}

end
