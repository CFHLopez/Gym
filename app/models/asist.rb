class Asist < ActiveRecord::Base
	belongs_to :clase

	has_many :has_asists
	has_many :alumnos, through: :has_asists

	#validates :cantidad, presence: true, numericality: true
	validates :clase_id, presence: true
	#valida una inscripcion de clase x dia
	validates :created_at, uniqueness: { scope: [:clase_id] }
	#validar cantidad de alumnos
	validates :cantidad, presence: true, numericality: {greater_than: 0, less_than: 50}

	#after_create :save_alumnos
	
	#Custom Setter
	#def alumnos=(value)
	#	@alumnos = value
	#end

	#private

	#def save_alumnos
	#	@alumnos.each do |alumno_id|
	#		has_asists.create(alumno_id: alumno_id, asist_id: self.id)
	#	end
	#end
end
