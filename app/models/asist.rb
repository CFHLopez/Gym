class Asist < ActiveRecord::Base
	belongs_to :clase

	validates :cantidad, presence: true, numericality: true
	validates :clase_id, presence: true
	#valida una inscripcion de clase x dia
	validates :created_at, uniqueness: { scope: [:clase_id] }
end
