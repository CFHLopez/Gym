class Clase < ActiveRecord::Base
	belongs_to :administrador
	has_many :profesor
	has_many :asistencia

	validates :nombre,  presence: true, length: { minimum: 2 }, uniqueness: true
	validates :desc, length: { maximum: 500 }
end
