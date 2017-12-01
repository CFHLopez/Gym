class Plan < ActiveRecord::Base
	belongs_to :user
	#has_and_belongs_to_many :clases
	has_many :planclases
	has_many :clases, through: :planclases
	has_and_belongs_to_many :clases

	#validando nombre
	validates :nombre, :presence => {:message => "no puede estar vacio"} 
	validates :nombre, length: { minimum: 2, :message => 'minimo 2 caracteres' }
	validates :nombre, uniqueness: true, :uniqueness => {:message => "ya esta ocupado"}

	#validando precio
	validates :precio, numericality: {greater_than: 999, less_than: 50001, :message => 'no puede ser menor a 1000 ni mayor a 50.000'}
	validates :precio, :presence => {:message => "no puede estar vacio"}

	#validando descripcion
	validates :desc, length: { maximum: 500, :message => 'maximo 500 caracteres' }
end
