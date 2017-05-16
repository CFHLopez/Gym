class Profesor < ActiveRecord::Base
	self.table_name = 'profesores'
	belongs_to :administrador
	has_many :clases

	validates :nombre,  presence: true
	validates :edad, numericality: true
	validates :desc, presence: true {:message => "Agregar descripcion del profesor"}
end
