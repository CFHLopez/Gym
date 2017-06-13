class Administrador < ActiveRecord::Base
	has_many :profesores
	has_many :planes
	has_many :clases


end
