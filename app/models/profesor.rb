class Profesor < ActiveRecord::Base
	self.table_name = 'profesores'
	belongs_to :administrador

	validates :nombre,  presence: true
	validates :edad, numericality: true
end
