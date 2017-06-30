class Asist < ActiveRecord::Base
	belongs_to :clase

	validates :cantidad, presence: true, numericality: true
	validates :clase_id, presence: true
	#valida una inscripcion de clase x dia
	validates :fecha, uniqueness: { scope: [:clase_id] }
end
