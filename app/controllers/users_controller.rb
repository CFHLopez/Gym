class UsersController < ApplicationController
 skip_before_filter :require_no_authentication, only: [:new,:create,:update,:eliminar, :editar]
  def index
  	@users = User.paginate(:page => params[:page], :per_page => 5)
  end
 

  def eliminar
  	@users = User.find(params[:id]) #tener en cuenta, tomar params:id
    @users.destroy
    respond_to do |format|
      format.html{redirect_to users_url, notice:'Usuario Eliminado'}
    end
  end

end
