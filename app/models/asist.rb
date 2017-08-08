class Asist < ActiveRecord::Base
	belongs_to :clase

	has_many :has_asists
	has_many :alumnos, through: :has_asists,dependent: :delete_all

	#validar clase
	validates :clase_id, :presence => {:message => "no puede estar vacio"}

	#validar fecha
	#validates :fecha, :uniqueness => {:message => "ya esta ocupado"}
	
	#validar cantidad de alumnos
	validates :cantidad, :presence => {:message => "no puede estar vacio"}
	validates :cantidad, numericality: {greater_than: 0, less_than: 51, :message => 'no puede ser menor a 1 ni mayor a 50'}

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
