class Asistencia < ActiveRecord::Base
	self.table_name = 'asistencias'
	belongs_to :Clase
	
	validates :cantidad, presence: true, numericality: true
end
