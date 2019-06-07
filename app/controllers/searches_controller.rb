class SearchesController < ApplicationController
	
	def index
		@tombs = Tomb.where("title like ? OR description like ? OR entity like ? OR category like ?", "%#{params[:search]}%", "%#{params[:search]}%", "%#{params[:search]}%", "%#{params[:search]}%")
	end

	private
		def searches_params
			params.require(:searches).permit(:search)
		end
end
