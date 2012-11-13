class ClientUsersController < ApplicationController
	def new
		@client_user = ClientUser.new
	end

	def create
		@client_user = ClientUser.new(params[:client_user])
		if @client_user.save
			flash[:success] = "You have successfully created your account!"
			login @client_user
			redirect_to @client_user 
		else
			render 'new'
		end
	end

	def show
	end
end
