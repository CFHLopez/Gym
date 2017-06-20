class ClasesController < ApplicationController
  before_action :set_clase, only: [:mostrar, :editar, :update, :eliminar]

  def index
    @clases = Clase.all
  end

  def mostrar
  end

  def nuevo
    @clases = Clase.new
  end

  def editar
  end

  def crear
    @clases = Clase.create(clase_params)
    respond_to do |format|
      if @clases.save
        format.html{redirect_to @clases, notice:'CLASE CREADA'}
      else
        format.html{render :nuevo}
      end
    end
  end

  def update
    respond_to do |format|
      if @clases.update(clase_params)
        format.html{redirect_to @clases, notice:'CLASE MODIFICADA'}
      else
        format.html{render :nuevo}
      end
    end
  end

  def eliminar
    @clases.destroy
    respond_to do |format|
      format.html{redirect_to clases_url, notice:'CLASE ELIMINADA'}
    end
  end

  private

  def set_clase
    @clases = Clase.find(params[:id])
  end

  def clase_params
    params.require(:clase).permit(:nombre, :desc)
  end
end
