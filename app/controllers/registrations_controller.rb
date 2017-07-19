class RegistrationsController < Devise::RegistrationsController
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
		allow = [:email,:password,:password_confirmation,:nombre,:edad,:role,:sexo,:desc]
		params.require(resource_name).permit(allow)
	end

	def account_update_params
		allow = [:email,:password,:password_confirmation,:current_password]
		params.require(resource_name).permit(allow)
	end

end