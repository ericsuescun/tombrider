class CustomersController < ApplicationController
	before_action :authenticate_user!

	def index
		@customers = Customer.all
	end

	def new
		@customer = Customer.new
	end

	def edit
		@customer = Customer.find(params[:id])
	end

	def show
		@customer = Customer.find(params[:id])
	end

	def create
		@tomb = Tomb.find(params[:tomb_id])
		@tomb.customers.create(customer_params)

		redirect_to @tomb
	end

	def update
		@customer = Customer.find(params[:id])
		if @customer.update(customer_params)
	  		redirect_to customer_path, notice: "El cliente ha sido editado!"
		else
	  		render :edit
		end
	end

	def destroy
		@customer = Customer.find(params[:id])
		@customer.destroy

		redirect_to customer_path, notice: "El cliente fue retirado!"
	end

	private
		def customer_params
			params.require(:customer).permit(:name, :email, :tel, :done).merge(tomb: @tomb)
		end
end

