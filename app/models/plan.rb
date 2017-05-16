class Plan < ActiveRecord::Base
	self.table_name = 'planes'
	belongs_to :administrador

	validates :nombre,  presence: true
	validates :precio, numericality: true
end
