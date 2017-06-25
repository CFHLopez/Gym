class Profesor < ActiveRecord::Base
	belongs_to :administrador
	has_many :clase
	
	validates :nombre, presence: true, length: { minimum: 2 }
	validates :edad, numericality: true, on: :update
	validates :clase_id, presence: true
	#validates :desc, presence: true {:message => "Agregar descripcion del profesor"}
	#validates :email, uniqueness: {case_sensitive: false ,message: "ya esta registrado"}
end
