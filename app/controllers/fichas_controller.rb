class FichasController < ApplicationController
	load_and_authorize_resource
  before_action :set_ficha, only: [:mostrar, :editar, :update, :eliminar]

  def index
  	@fichas = Ficha.paginate(:page => params[:page], :per_page => 5)
    @alumnos = Alumno.all
    @plans = Plan.all
	end

 	def mostrar
  end

  def nuevo
  	@fichas = Ficha.new
  end

  def editar
	end

  def crear
    @fichas = Ficha.create(ficha_params)
    respond_to do |format|
      if @fichas.save
        format.html{redirect_to @fichas, notice:'Ficha Creada'}
      else
        format.html{render :nuevo}
      end
    end
  end

  def update
    respond_to do |format|
      if @fichas.update(ficha_params)
        format.html{redirect_to @fichas, notice:'Ficha Modificada'}
      else
        format.html{render :nuevo}
      end
    end
  end

  def eliminar
    @fichas.destroy
    respond_to do |format|
      	format.html{redirect_to fichas_url, notice:'Ficha Eliminada'}
    end
  end

  private

  def set_ficha
  	@fichas = Ficha.find(params[:id])
  end

  def ficha_params
  	params.require(:ficha).permit(:estatura, :peso, :biceps, :triceps, :subescapular, :suprailiaco, :IMC, :grasa, :torax, :cintura, :caderas, :brazo, :muslo, :alumno_id)
  end
end
