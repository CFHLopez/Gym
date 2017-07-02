class Clase < ActiveRecord::Base
	belongs_to :administrador
	has_many :profesors
	has_many :asistencias
	has_many :asists

	validates :nombre,  presence: true, length: { minimum: 2 }, uniqueness: true
	validates :desc, length: { maximum: 500 }
end
