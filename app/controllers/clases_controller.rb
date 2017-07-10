class ClasesController < ApplicationController
  load_and_authorize_resource
  before_action :set_clase, only: [:mostrar, :editar, :update, :eliminar]

  def index
    @clases= Clase.paginate(:page => params[:page], :per_page => 5)
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
        format.html{redirect_to @clases, notice:'Clase Creada'}
      else
        format.html{render :nuevo}
      end
    end
  end

  def update
    respond_to do |format|
      if @clases.update(clase_params)
        format.html{redirect_to @clases, notice:'Clase Modificada'}
      else
        format.html{render :nuevo}
      end
    end
  end

  def eliminar
    @clases.destroy
    respond_to do |format|
      format.html{redirect_to clases_url, notice:'Clase Eliminada'}
    end
  end

  private

  def set_clase
    @clases = Clase.find(params[:id])
  end

  def clase_params
    params.require(:clase).permit(:nombre,:user_id,:desc)
  end
end