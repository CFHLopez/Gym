class Ficha < ActiveRecord::Base
	belongs_to :alumno

	validates :estatura, presence: true	
	validates :peso, presence: true  
	validates :alumno_id, presence: true
end
