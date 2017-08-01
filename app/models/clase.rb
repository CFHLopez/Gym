class Clase < ActiveRecord::Base
	has_many :users

	#al borrar una clase, borra todas las asistencias de esa clase
	has_many :asists, dependent: :delete_all

	#validando nombre
	validates :nombre, presence: true, :presence => {:message => "no puede estar vacio"} 
	validates :nombre, length: { minimum: 2, :message => 'minimo 2 caracteres' }
	validates :nombre, uniqueness: true, :uniqueness => {:message => "ya esta ocupado"}

	#validando descripcion
	validates :desc, length: { maximum: 500, :message => 'maximo 500 caracteres' }
end
