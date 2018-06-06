class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  
  layout :user_layout


  private

	def user_layout
		if user_signed_in?
			if current_user.admin?
		    'admin_application'
		  else
		    'application'
		  end
		end
	end

  def configure_permitted_parameters
  	devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :surname, :sex])
  end
end
