class CustomersController < ApplicationController
	before_action :authenticate_user!, except: [:create]

	def index
		@customers = Customer.all
		@customersa = Customer.where("done = ?", true)
		@customersn = Customer.where("done = ?", false)
	end

	def new
		@customer = Customer.new
	end

	def edit
		@customer = Customer.find(params[:id])
		@tomb = @customer.tomb
		@comments = @customer.comments
	end

	def show
		@customer = Customer.find(params[:id])
		@tomb = @customer.tomb
		@comments = @customer.comments
	end

	def create
		@tomb = Tomb.find(params[:tomb_id])
		@tomb.customers.create(customer_params)

		redirect_to @tomb, notice: "Nos pondremos en contacto contigo!"
	end

	def update
		@customer = Customer.find(params[:id])
		@tomb = @customer.tomb
		@comments = @customer.comments
		if @customer.update(customer_params)
	  		redirect_to customer_path, notice: "El cliente ha sido editado!"
		else
	  		render :edit
		end
	end

	def destroy
		Customer.find(params[:id]).destroy


		redirect_to tomb_path, notice: "El cliente fue retirado!"
	end

	private
		def customer_params
			params.require(:customer).permit(:name, :email, :tel, :done).merge(tomb: @tomb)
		end
end

