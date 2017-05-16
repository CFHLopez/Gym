class Administrador < ActiveRecord::Base
	self.table_name = 'administradores'
	has_many :profesores
	has_many :planes
	has_many :clases

	validates :nombre,  presence: true
	validates :edad, numericality: true
	validates :email, uniqueness: {case_sensitive: false ,message: "ya esta registrado"}

end
