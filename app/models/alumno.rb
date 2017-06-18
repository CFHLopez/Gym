class Alumno < ActiveRecord::Base
	belongs_to :plan
	has_many :clases
  has_many :pagos

	validates :nombre, presence: true
	validates :sexo, presence: true
	validates :edad, presence: true, length: {minimum:15, maximun:50} 
end
