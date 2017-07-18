class Ficha < ActiveRecord::Base
	belongs_to :alumno

	#campos obligatorios en la ficha
	validates :alumno_id, presence: true
	#con float
	validates :estatura, presence: true 
	validates :peso, presence: true  


	#validaciones (no son obligatorios estos campos)
	#depente el criterio del profesor
	#validates :biceps, numericality: true
	#validates :triceps, numericality: true
	#validates :subescapular, numericality: true
	#validates :suprailiaco, numericality: true
	#validates :torax, numericality: true
    #validates :cintura, numericality: true
    #validates :caderas, numericality: true
    #validates :brazo, numericality: true
    #validates :muslo, numericality: true

    #validaciones valores con float
    #validates :IMC, numericality: true
    #validates :grasa, numericality: true
end
