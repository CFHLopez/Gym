class User < ActiveRecord::Base
	#un usuario muchas clases
	#attr_accessible :nombre, :clase_id
	has_many :usersclases
	has_many :clases, through: :usersclases

	has_many :plans
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
	validates :nombre, presence: true, length: { minimum: 2 }
	validates :sexo, presence: true
	validates :rut, rut: true, presence: true, uniqueness: true
	validates :edad, numericality: true, presence: true
	attr_accessible :email, :password, :password_confirmation,:nombre,:rut,:edad,:role,:sexo,:desc, :observacion
  	devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable
end

#Estas declaraciones dan algunas habilidades especiales a nuestros usuarios: 
#(: registerable)              = Se pueden inscribir
#(: database_authenticatable)  = iniciar su sesión 
#(: recoverable)               = recuperar la contraseña
#(: rememberable)              = agregar una casilla de verificación para que el sitio web los recuerde   
#(: trackable)                 = podemos ver cuando entraron o salieron 
#(: validatable)               = y en el registro, podemos comprobar si los datos que han proporcionado son válidos
