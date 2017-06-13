class PlansController < ApplicationController
	before_action :set_plan, only: [:mostrar, :editar, :update, :eliminar]

  def index
    @plans= Plan.all
  end

  def mostrar
  end

  def nuevo
    @plans = Administrador.new
  end

  def editar
  end

  def crear
    @plans = Plan.create(adm_params)
    respond_to do |format|
      if @plans.save
        format.html{redirect_to @plans, notice:'PLAN CREADO'}
      else
        format.html{render :nuevo}
      end
    end
  end

  def update
    respond_to do |format|
      if @plans.update(adm_params)
        format.html{redirect_to @plans}
      else
        format.html{render :nuevo}
      end
    end
  end

  def eliminar
    @aplans.destroy
    respond_to do |format|
      format.html{redirect_to plans_url, notice:'PLAN ELIMINADO'}
    end
  end

  private

  def set_plan
    @plans = Plan.find(params[:id])
  end

  def adm_params
    params.require(:plan).permit(:nombre, :precio)
  end
end
