class AsistsController < ApplicationController
	load_and_authorize_resource
  before_action :set_asists, only: [:mostrar, :editar, :update, :eliminar]

  def index
    @asists = Asist.paginate(:page => params[:page], :per_page => 5)
  end

  def mostrar
  end

  def nuevo
    @asists = Asist.new
    @alumnos = Alumno.all
  end

  def editar
  end

  def crear
    @asists = Asist.create(asist_params)
    @asists.alumnos = params[:alumnos]
    respond_to do |format|
      if @asists.save
        format.html{redirect_to @asists, notice:'ASISTENCIA CREADA'}
      else
        format.html{render :nuevo}
      end
    end
  end

  def update
    respond_to do |format|
      if @asists.update(asist_params)
        format.html{redirect_to @asists}
      else
        format.html{render :nuevo}
      end
    end
  end

  def eliminar
    @asists.destroy
    respond_to do |format|
      format.html{redirect_to asist_url, notice:'ASISTENCIA ELIMINADO'}
    end
  end

  private

  def set_asists
    @asists = Asist.find(params[:id])
  end

  def asist_params
    params.require(:asist).permit(:fecha, :cantidad, :clase_id, :alumnos)
  end
end
