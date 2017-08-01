class Ficha < ActiveRecord::Base
	belongs_to :alumno

	#campos obligatorios en la ficha

	#validar alumno_id
	validates :alumno_id, presence: true,:presence => {:message => "no puede estar vacio"}

	#validar altura (float) altura minima 1 metro y maxima 3
	validates :estatura, presence: true,:presence => {:message => "no puede estar vacio"}
	validates :estatura, numericality: {greater_than: 0.9, less_than: 3.1, :message => 'no puede ser menor a 1.0 ni mayor a 3.0 metros'} 
	
	#validar peso (float) minimo 40 kg y maximo 200 kg
	validates :peso, presence: true,:presence => {:message => "no puede estar vacio"}
	validates :peso, numericality: {greater_than: 29.9, less_than: 200.1, :message => 'no puede ser menor a 30.0 ni mayor a 200.0 kilos'}  

	#validaciones (no son obligatorios estos campos)
	#depente el criterio del profesor

	#Pliegometria (Integer)

	#validates :biceps, numericality: {less_than: 10} 
	#validates :triceps, numericality: {less_than: 10}
	#validates :subescapular, numericality: {less_than: 10} 
	#validates :suprailiaco, numericality: {less_than: 10}

	#Antropometria (Integer)

	#validates :torax, numericality: true
    #validates :cintura, numericality: true
    #validates :caderas, numericality: true
    #validates :brazo, numericality: true
    #validates :muslo, numericality: true
end
