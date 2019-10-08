class SearchesController < ApplicationController
	
	def index
		@tombs = Tomb.where("ready like ? ", "Si")
		@tombs = @tombs.where("id like ? OR title like ? OR description like ? OR entity like ? OR category like ? OR level like ? OR capacity = ?", params[:search].to_i, "%#{params[:search]}%", "%#{params[:search]}%", "%#{params[:search]}%", "%#{params[:search]}%", "%#{params[:search]}%", params[:search].to_i)
		if current_user != nil
		    if current_user.admin == true
		      @tombs = Tomb.where("id like ? OR title like ? OR description like ? OR entity like ? OR category like ? OR level like ? OR capacity = ?", params[:search].to_i, "%#{params[:search]}%", "%#{params[:search]}%", "%#{params[:search]}%", "%#{params[:search]}%", "%#{params[:search]}%", params[:search].to_i)
		    end
		end
	end
	

	private
		def searches_params
			params.require(:searches).permit(:search)
		end
end
