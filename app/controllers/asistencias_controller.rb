class AsistenciasController < ApplicationController
	before_action :set_asistencia, only: [:mostrar, :editar, :update, :eliminar]

  def index
    @asistencias = Asistencia.all
  end

  def mostrar
  end

  def nuevo
    @asistencias = Asistencia.new
  end

  def editar
  end

  def crear
    @asistencias = Asistencia.create(asistencias_params)
    respond_to do |format|
      if @asistencias.save
        format.html{redirect_to @asistencias, notice:'ASISTENCIA CREADA'}
      else
        format.html{render :nuevo}
      end
    end
  end

  def update
    respond_to do |format|
      if @asistencias.update(asistencias_params)
        format.html{redirect_to @asistencias}
      else
        format.html{render :nuevo}
      end
    end
  end

  def eliminar
    @asistencias.destroy
    respond_to do |format|
      format.html{redirect_to asistencias_url, notice:'ASISTENCIA ELIMINADO'}
    end
  end

  private

  def set_asistencia
    @asistencias = Asistencia.find(params[:id])
  end

  def asistencias_params
    params.require(:asistencia).permit(:fecha, :cant_alumnos)
  end
end
