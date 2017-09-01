class Alumno < ActiveRecord::Base
	belongs_to :plan
	has_many :asists

	#al eliminar un alumno/a, se borran todos sus pagos y fichas
	
	#se guardaran los pagos para realizar estadisticas de meses
	#has_many :pagos ,dependent: :delete_all
	
	#se guardaran las fichas <--- guardadas con rut del usuario
	#has_many :fichas ,dependent: :delete_all

	#validando nombre
	validates :nombre, length: { minimum: 2, :message => 'minimo 2 caracteres' }
	validates :nombre, :presence => {:message => "no puede estar vacio"}

	#validando sexo
	validates :sexo, :presence => {:message => "no puede estar vacio"}

	#validando edad
	validates :edad, numericality: {greater_than: 13, less_than: 71, :message => 'no puede ser menor a 14 ni mayor a 70'}
	validates :edad, :presence => {:message => "no puede estar vacio"}

	#validando plan_id
	validates :plan_id, :presence => {:message => "no puede estar vacio"}

	#validando rut
	validates :rut, :rut => {:message => "no valido"}
	validates :rut, :presence => {:message => "no puede estar vacio"}
	validates :rut, :uniqueness => {:message => "ya esta ocupado"}

	#validando descripcion
	validates :desc, length: { maximum: 500, :message => 'maximo 500 caracteres' }
end
