class PlansController < ApplicationController
	load_and_authorize_resource
  before_action :set_plan, only: [:mostrar, :editar, :update, :eliminar]

  def index
    @plans = Plan.paginate(:page => params[:page], :per_page => 5)
    @alumnos = Alumno.all
    @clases = Clase.all
  end

  def mostrar
    @clases = Clase.all
    @users = User.all
  end

  def nuevo
    @clases = Clase.all
    @plans = Plan.new
  end

  def editar
  end

  def crear
    @clases = Clase.all
    @plans = Plan.create(plans_params)
    respond_to do |format|
      if @plans.save
        format.html{redirect_to @plans, notice:'Plan Creado'}
      else
        format.html{render :nuevo}
      end
    end
  end

  def update
    respond_to do |format|
      if @plans.update(plans_params)
        format.html{redirect_to @plans}
      else
        format.html{render :nuevo}
      end
    end
  end

  def eliminar
    @plans.destroy
    respond_to do |format|
      format.html{redirect_to plans_url, notice:'Plan Eliminado'}
    end
  end

  private

  def set_plan
    @plans = Plan.find(params[:id])
  end

  def plans_params
    params.require(:plan).permit(:nombre, :precio, :desc)
  end
end