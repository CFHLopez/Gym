class ProfesorsController < ApplicationController
	 before_action :set_profesor, only: [:mostrar, :editar, :update, :eliminar]

  def index
    @profesors = Profesor.all
  end

  def mostrar
  end

  def nuevo
    @profesors = Profesor.new
  end

  def editar
  end

  def crear
    @profesors = Profesor.create(adm_params)
    respond_to do |format|
      if @profesors.save
        format.html{redirect_to @profesors, notice:'PROFESOR CREADO'}
      else
        format.html{render :nuevo}
      end
    end
  end

  def update
    respond_to do |format|
      if @profesors.update(adm_params)
        format.html{redirect_to @profesors}
      else
        format.html{render :nuevo}
      end
    end
  end

  def eliminar
    @profesors.destroy
    respond_to do |format|
      format.html{redirect_to profesors_url, notice:'PROFESOR ELIMINADO'}
    end
  end

  private

  def set_profesor
    @profesorS = profesor.find(params[:id])
  end

  def adm_params
    params.require(:profesor).permit(:nombre, :edad, :email, :desc)
  end
end
end
