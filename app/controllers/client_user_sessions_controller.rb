class ClientUserSessionsController < ApplicationController

	def new
	end

	def create

		client_user = ClientUser.find_by_account_name(params[:client_user_session][:account_name].downcase)
		if client_user && client_user.authenticate(params[:client_user_session][:password])
			client_user_login client_user
			redirect_to client_user
		else
			flash.now[:error] = 'Invalid account/password combination'
			render 'new'
		end
	end

	def destroy
		client_user_logout
		redirect_to root_url
	end
end
