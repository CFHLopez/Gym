class Pago < ActiveRecord::Base
  	belongs_to :alumno

 	validates :monto, presence: true, numericality: true
  	validates :alumno_id, presence: true
  	validates :created_at, uniqueness: { scope: [:alumno_id] }
end
