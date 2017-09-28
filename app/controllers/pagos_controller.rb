class PagosController < ApplicationController
	load_and_authorize_resource
  before_action :set_pago, only: [:mostrar, :editar, :update, :eliminar]

  def index
    @pagos = Pago.paginate(:page => params[:page], :per_page => 5)
    @alumnos = Alumno.all
    @plans = Plan.all
  end

  def mostrar
    @alumnos = Alumno.all
  end

  def nuevo
    @pagos = Pago.new
    @alumnos = Alumno.all
  end

  def editar
    @alumnos = Alumno.all
  end

  def crear
    @alumnos = Alumno.all
    @pagos = Pago.create(pagos_params)
    respond_to do |format|
      if @pagos.save
        format.html{redirect_to @pagos, notice:'Pago Creado'}
      else
        format.html{render :nuevo}
      end
    end
  end

  def update
    @alumnos = Alumno.all
    respond_to do |format|
      if @pagos.update(pagos_params)
        format.html{redirect_to @pagos}
      else
        format.html{render :nuevo}
      end
    end
  end

  def eliminar
    @pagos.destroy
    respond_to do |format|
      format.html{redirect_to pagos_url, notice:'Pago Eliminado'}
    end
  end

  private

  def set_pago
    @pagos = Pago.find(params[:id])
  end

  def pagos_params
    params.require(:pago).permit(:monto, :rut, :create_at)
 end
end
