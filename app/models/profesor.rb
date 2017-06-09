class Profesor < ActiveRecord::Base
	belongs_to :administrador
	has_many :clases

	validates :nombre,  presence: true
	validates :edad, numericality: true
	validates :desc, presence: true {:message => "Agregar descripcion del profesor"}
	validates :email, uniqueness: {case_sensitive: false ,message: "ya esta registrado"}
end
