class HomeController < ApplicationController
	def index
		redirect_to user_folder_path(user_id: current_user.id, id: current_user.folders.first.id)
	end
end
