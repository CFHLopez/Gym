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
    @profesors = Profesor.create(profesors_params)
    respond_to do |format|
      if @profesors.save
        format.html{redirect_to @profesors, notice:'Profesor CREADO'}
      else
        format.html{render :nuevo}
      end
    end
  end

  def update
    respond_to do |format|
      if @profesors.update(profesors_params)
        format.html{redirect_to @profesors}
      else
        format.html{render :nuevo}
      end
    end
  end

  def eliminar
    @profesors.destroy
    respond_to do |format|
      format.html{redirect_to profesors_url, notice:'profesor ELIMINADO'}
    end
  end

  private

  def set_profesor
    @profesors = Profesor.find(params[:id])
  end

  def profesors_params
    params.require(:profesor).permit(:nombre, :clase_id, :edad, :email, :desc)
  end
end
