class User < ActiveRecord::Base
	#un usuario muchas clases
	#attr_accessible :nombre, :clase_id
	has_many :clases
	has_many :plans

  	attr_accessible :email, :password, :password_confirmation,:nombre,:rut,:edad,:role,:sexo, :observacion

  	#validando nombre
	validates :nombre, length: { minimum: 2, :message => 'minimo 2 caracteres' }
	validates :nombre, presence: true,:presence => {:message => "no puede estar vacio"}

	#validar sexo
	validates :sexo, presence: true

	#validando rut
	validates :rut, rut: true, :rut => {:message => "no valido"}
	validates :rut, presence: true, :presence => {:message => "no puede estar vacio"}
	validates :rut, uniqueness: true, :uniqueness => {:message => "ya esta ocupado"}

	#validando edad
	validates :edad, numericality: {greater_than: 13, less_than: 71, :message => 'no puede ser menor a 14 ni mayor a 70'}
	validates :edad, presence: true, :presence => {:message => "no puede estar vacio"}

	#validando observacion
	validates :observacion, length: { maximum: 500, :message => 'maximo 500 caracteres' }

	#validar devise
  	devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable
end

#Estas declaraciones dan algunas habilidades especiales a nuestros usuarios: 
#(: registerable)              = Se pueden inscribir
#(: database_authenticatable)  = iniciar su sesión 
#(: recoverable)               = recuperar la contraseña
#(: rememberable)              = agregar una casilla de verificación para que el sitio web los recuerde   
#(: trackable)                 = podemos ver cuando entraron o salieron 
#(: validatable)               = y en el registro, podemos comprobar si los datos que han proporcionado son válidos
