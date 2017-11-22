class TotalController < ApplicationController
  def index
  	@alumnos = Alumno.all
    @asists = Asist.all
    @rutinas = Rutina.all
  end
end
