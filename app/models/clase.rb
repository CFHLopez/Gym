class Clase < ActiveRecord::Base
	#has_many :planes

	has_many :planclase
	has_many :plans, through: :planclases

	#validando nombre
	validates :nombre, :presence => {:message => "no puede estar vacio"} 
	validates :nombre, length: { minimum: 2, :message => 'minimo 2 caracteres' }
	validates :nombre, :uniqueness => {:message => "ya esta ocupado"}

	#validando descripcion
	validates :desc, length: { maximum: 500, :message => 'maximo 500 caracteres' }
end
