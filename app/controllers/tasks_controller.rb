class TasksController < ApplicationController
	before_action :authenticate_user!

	def index
		@customers = Customer.all
	end

	def edit
		@customer = Customer.find(params[:id])
	end

	def show
		@customer = Customer.find(params[:id])
		@tomb = @customer.tomb
	end

	def update
		@customer = Customer.find(params[:id])
		if @customer.update(task_params)
	  		redirect_to task_path, notice: "El cliente ha sido editado!"
		else
	  		render :edit
		end
	end

	def destroy
		@customer = Customer.find(params[:id])
		@customer.destroy

		redirect_to task_path, notice: "El cliente fue retirado!"
	end

	private
		def task_params
			params.require(:task).permit(:name, :email, :tel, :done)
		end
end
