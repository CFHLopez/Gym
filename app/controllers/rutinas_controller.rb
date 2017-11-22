class RutinasController < ApplicationController
  load_and_authorize_resource
  before_action :set_rutinas, only: [:mostrar, :editar, :update, :eliminar]

  def index
    @rutinas = Rutina.paginate(:page => params[:page], :per_page => 5)
    @alumnos = Alumno.all
  end

  def mostrar
  	@alumnos = Alumno.all
  end

  def nuevo
    @rutinas = Rutina.new
    @alumnos = Alumno.all
  end

  def editar
  end

  def crear
  	@alumnos = Alumno.all
    @rutinas = Rutina.create(rutina_params)
    respond_to do |format|
      if @rutinas.save
        format.html{redirect_to @rutinas, notice:'Rutina Creada'}
      else
        format.html{render :nuevo}
      end
    end
  end

  def update
    respond_to do |format|
      if @rutinas.update(rutina_params)
        format.html{redirect_to @rutinas, notice:'Rutina Modificada'}
      else
        format.html{render :nuevo}
      end
    end
  end

  def eliminar
    @rutinas.destroy
    respond_to do |format|
      format.html{redirect_to "/total/index", notice:'Rutina Eliminada'}
    end
  end

  private

  def set_rutinas
    @rutinas = Rutina.find(params[:id])
  end

  def rutina_params
    params.require(:rutina).permit(:nombre, :desc, :rut, :fecha)
  end
end
