class Ficha < ActiveRecord::Base
	belongs_to :alumno

	#campos obligatorios en la ficha
	validates :alumno_id, presence: true
	#con float
	# altura minima 1 metro y maxima 3
	validates :estatura, presence: true, numericality: {greater_than: 1.0, less_than: 3.0} 
	# peso minimo 40 kg y maximo 200 kg
	validates :peso, presence: true, numericality: {greater_than: 40.0, less_than: 200}  

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
