class Profesor < ActiveRecord::Base
	belongs_to :administrador
	belongs_to :clase
	
	validates :nombre, presence: true, length: { minimum: 2 }
	validates :edad, numericality: true
	validates :clase_id, presence: true
	#validates :desc, presence: true {:message => "Agregar descripcion del profesor"}
	#validates :email, uniqueness: {case_sensitive: false ,message: "ya esta registrado"}
end
