class UsersController < ApplicationController
 skip_before_filter :require_no_authentication, only: [:new,:create,:update,:eliminar]
  def index
  	@users = User.paginate(:page => params[:page], :per_page => 5)
  end

  def update
    respond_to do |format|
      if @users.update(account_update_params)
        format.html{redirect_to @users}
      else
        format.html{render :nuevo}
      end
    end
  end

  def eliminar
  	@users = User.find(params[:id]) #tener en cuenta, tomar params:id
    @users.destroy
    respond_to do |format|
      format.html{redirect_to users_url, notice:'Usuario Eliminado'}
    end
  end

private
 
def account_update_params
		allow = [:email,:password,:password_confirmation,:current_password,:nombre,:rut,:edad,:role,:sexo,:observacion]
		params.require(resource_name).permit(allow)
	end


end
