class Plan < ActiveRecord::Base
	self.table_name = 'planes'
	belongs_to :administrador
	has_many :alumnos 

	validates :nombre,  presence: true
	validates :precio, numericality: true
end
