class InfoController < ApplicationController
  def index
  	@plans = Plan.paginate(:page => params[:page])
  	@clases = Clase.paginate(:page => params[:page])
  end
end
