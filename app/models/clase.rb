class Clase < ActiveRecord::Base
	has_and_belongs_to_many :users
	has_and_belongs_to_many :plans
	has_many :planclases
	has_many :Plans, through: :planclases

	#al borrar una clase, borra todas las asistencias de esa clase
	has_many :asists, dependent: :delete_all

	#validando nombre
	validates :nombre, :presence => {:message => "no puede estar vacio"} 
	validates :nombre, length: { minimum: 2, :message => 'minimo 2 caracteres' }
	validates :nombre, :uniqueness => {:message => "ya esta ocupado"}

	#validando descripcion
	validates :desc, length: { maximum: 500, :message => 'maximo 500 caracteres' }
end
