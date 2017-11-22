class Rutina < ActiveRecord::Base

	#validando nombre
	validates :nombre, :presence => {:message => "no puede estar vacio"}
	
	#validando rut
	validates :rut, :rut => {:message => "no valido"}
	validates :rut, :presence => {:message => "no puede estar vacio"}

	#validando descripcion
	validates :desc, length: { maximum: 500, :message => 'maximo 500 caracteres' }
end
