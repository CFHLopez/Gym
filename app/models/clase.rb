class Clase < ActiveRecord::Base
	belongs_to :administrador
	
	validates :nombre,  presence: true
end
