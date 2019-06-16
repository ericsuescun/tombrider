class UsersController < ApplicationController
	def index
		@users = User.all
	end

	def show
		@user = User.find(params[:id])
		@tombs = @user.tombs
	end

	def edit
		@user = User.find(params[:id])
	end

	def update
		@user = User.find(params[:id])
		if @user.update(user_params)
	  		redirect_to tombs_path, notice: "El vendedor ha sido editado!"
		else
	  		render :edit
		end
	end

	private
		def user_params
			params.require(:user).permit(:name, :email, :tel, :cel, :done)
		end
end
