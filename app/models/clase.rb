class Clase < ActiveRecord::Base
	self.table_name = 'clases'
	belongs_to :administrador
	belongs_to :profesor
	has_many :asistencias 

	validates :nombre,  presence: true
end
