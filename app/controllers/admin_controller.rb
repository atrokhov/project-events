class AdminController < ApplicationController
	before_action :authenticate_user!, :require_admin

	def require_admin
		unless current_user.admin?
      redirect_to root_path
    end
	end
end