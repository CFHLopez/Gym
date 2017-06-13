class PagosController < ApplicationController
	 before_action :set_pago, only: [:mostrar, :editar, :update, :eliminar]

  def index
    @pagos = Pago.all
  end

  def mostrar
  end

  def nuevo
    @pagos = Pago.new
  end

  def editar
  end

  def crear
    @pagos = Pago.create(adm_params)
    respond_to do |format|
      if @pagos.save
        format.html{redirect_to @pagos, notice:'PAGOCREADO'}
      else
        format.html{render :nuevo}
      end
    end
  end

  def update
    respond_to do |format|
      if @pagos.update(adm_params)
        format.html{redirect_to @pagos}
      else
        format.html{render :nuevo}
      end
    end
  end

  def eliminar
    @pagos.destroy
    respond_to do |format|
      format.html{redirect_to pagos_url, notice:'PAGO ELIMINADO'}
    end
  end

  private

  def set_pago
    @pagos = Pago.find(params[:id])
  end

  def adm_params
    params.require(:pago).permit(:fecha, :monto)
 end
end
