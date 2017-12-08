class VisitasController < ApplicationController
  def index
  	@alumnos = Alumno.all
    @pagos = Pago.all
    @fichas = Ficha.all
    @clases = Clase.all
  end
end
