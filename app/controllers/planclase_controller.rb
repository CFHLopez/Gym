class PlanclaseController < ApplicationController

def nuevo
	@plans = Plan.find(params[:id])
	@planclase = PlanClase.new(plan_id: @plan.id)
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
		format.html{redirect_to plan_path(Plan.find(plan_id), notice: 'Plan Creado')}
	end
end

def mostrar
	@plans = Plan.find(params[:id])
end

private

  def set_planclase
    @plans = PlanClase.find(params[:id])
  end

  def planclase_params
    params.require(:plan).permit(:nombre, :precio, :desc)
  end

end
