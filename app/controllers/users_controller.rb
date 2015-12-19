class UsersController < ApplicationController

	def index	  
	  @users = User.paginate(page: params[:page], :per_page => 50) 
	end

	def show
	  @user = User.find(params[:id])	  
	end

	def destroy
      @user = User.find(params[:id])

      if @user.destroy
        redirect_to root_url, notice: "User deleted."
      end
    end
end
