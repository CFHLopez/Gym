class Plan < ActiveRecord::Base
	belongs_to :administrador
	has_many :alumnos

	validates :nombre,  presence: true
	validates :precio, numericality: true
end
