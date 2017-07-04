class User < ActiveRecord::Base

	has_many :plans
	has_many :clases
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  
	validates :nombre, presence: true, length: { minimum: 2 }
	validates :sexo, presence: true
	validates :plan_id, presence: true
	validates :rut, rut: true, presence: true, uniqueness: true


  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end


#Estas declaraciones dan algunas habilidades especiales a nuestros usuarios. Se pueden inscribir (: registerable), iniciar su sesión (: database_authenticatable) recuperar la contraseña (:recoverable), agregar una casilla de verificación para que el sitio web los recuerde (: rememberable), podemos ver cuando entraron o salieron (: trackable); y en el registro, podemos comprobar si los datos que han proporcionado son válidos (: validatable)