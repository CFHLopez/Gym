class AsistenciasController < ApplicationController
	before_action :set_asistencia, only: [:mostrar, :editar, :update, :eliminar]

  def index
    @asistencia = Asistencia.paginate(:page => params[:page], :per_page => 8)
  end

  def mostrar
  end

  def nuevo
    @asistencia = Asistencia.new
  end

  def editar
  end

  def crear
    @asistencia = Asistencia.create(asistencia_params)
    respond_to do |format|
      if @asistencia.save
        format.html{redirect_to @asistencia, notice:'ASISTENCIA CREADA'}
      else
        format.html{render :nuevo}
      end
    end
  end

  def update
    respond_to do |format|
      if @asistencia.update(asistencia_params)
        format.html{redirect_to @asistencia}
      else
        format.html{render :nuevo}
      end
    end
  end

  def eliminar
    @asistencia.destroy
    respond_to do |format|
      format.html{redirect_to asistencia_url, notice:'ASISTENCIA ELIMINADO'}
    end
  end

  private

  def set_asistencia
    @asistencia = Asistencia.find(params[:id])
  end

  def asistencia_params
    params.require(:asistencia).permit(:fecha, :cant_alumnos)
  end
end
