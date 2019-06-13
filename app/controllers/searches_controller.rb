class SearchesController < ApplicationController
	
	def index
		@tombs = Tomb.where("ready like ? OR title like ? OR description like ? OR entity like ? OR category like ? OR capacity like ?", "Si", "%#{params[:search]}%", "%#{params[:search]}%", "%#{params[:search]}%", "%#{params[:search]}%", "%#{params[:search]}%")
	end

	private
		def searches_params
			params.require(:searches).permit(:search)
		end
end
