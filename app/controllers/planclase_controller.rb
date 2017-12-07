class PlanclaseController < ApplicationController

  def nuevo
    @plans = Plan.find(params[:id])
    @plansclase = PlanClase.new(plan_id: @plan.id)
  end

  def crear
    plan_id = params[:nuevo_planclase][:plan_id]
    clase_id = params[:nuevo_planclase][:clase_id]

    clase_id.each do |clase|
      if !clase_id.empty?
        PlanClase.create(plan_id: plan_id, clase_id: clase)
      end
    end

    respond_to do |format|
      format.html{redirect_to plan_path(Plan.find(plan_id)), notice: 'Creado'}
    end
  end

  def mostrar
    @plans = Plan.find(params[:id])
  end
end
