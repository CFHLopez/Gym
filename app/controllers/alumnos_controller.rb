class AlumnosController < ApplicationController
  before_action :set_alumno, only: [:mostrar, :editar, :update, :eliminar]

  def index
    @alumnos = Alumno.all
  end

  def mostrar
  end

  def nuevo
    @alumnos = Alumno.new
  end

  def editar
  end

  def crear
    @alumnos = Alumno.create(alumno_params)
    respond_to do |format|
      if @alumnos.save
        format.html{redirect_to @alumnos, notice:'Alumno Ingresado'}
      else
        format.html{render :nuevo}
      end
    end
  end

  def update
    respond_to do |format|
      if @alumnos.update(alumno_params)
        format.html{redirect_to @alumnos}
      else
        format.html{render :nuevo}
      end
    end
  end

  def eliminar
    @alumnos.destroy
    respond_to do |format|
      format.html{redirect_to alumnos_url, notice:'Alumno Eliminado'}
    end
  end

  private

  def set_alumno
    @alumnos = Alumno.find(params[:id])
  end

  def alumno_params
    params.require(:alumno).permit(:nombre, :sexo, :plan_id)
  end
end
