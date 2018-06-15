class ModeratorController < ApplicationController
	before_action :authenticate_user!, :require_moderator

	def require_moderator
		unless current_user.moderator?
      		redirect_to root_path
    	end
	end
end