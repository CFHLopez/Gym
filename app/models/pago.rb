class Pago < ActiveRecord::Base
  	belongs_to :alumno 

  	#validar alumno_id
  	validates :alumno_id, :presence => {:message => "no puede estar vacio"}

  	#validar monto
 	validates :monto, :presence => {:message => "no puede estar vacio"}
 	validates :monto, numericality: {greater_than: 999, less_than: 50001, :message => 'no puede ser menor a 1000 ni mayor a 50.000'}
end
