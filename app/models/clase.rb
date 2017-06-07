class Clase < ActiveRecord::Base
	belongs_to :administrador
	belongs_to :profesor
	has_many :asistencia

	validates :nombre,  presence: true
end
