class RegistrationsController < Devise::RegistrationsController
	skip_before_filter :require_no_authentication, only: [:new,:create,:update]
	def new
		super
	end

	def create
		super
	end

	def update
		super
	end

	private

	def sign_up_params
		allow = [:email,:password,:password_confirmation,:nombre,:rut,:edad,:role,:sexo,:observacion]
		params.require(resource_name).permit(allow)
	end

	def account_update_params
		allow = [:email,:password,:password_confirmation,:current_password]
		params.require(resource_name).permit(allow)
	end

end