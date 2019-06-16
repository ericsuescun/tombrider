class CommentsController < ApplicationController
	before_action :authenticate_user!

	def create
	  customer = Customer.find(params[:customer_id])
	  customer.comments.create(comments_params)

	  redirect_to customer
	end

	private
	  def comments_params
	    params.require(:comment).permit(:body)
	  end
end
