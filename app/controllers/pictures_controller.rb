class PicturesController < ApplicationController

	def create
		tomb = Tomb.find(params[:tomb_id])

		unless pictures_params[:image] == ""
			tomb.pictures.create(pictures_params)
			redirect_to tomb, notice: "Imagen cargada!"
		else
			redirect_to tomb, notice: "Sin referencia de imagen! Escoge alguna foto por favor."

		end
	end

	def show
		redirect_to tomb_url
	end

	def destroy
		tomb = Tomb.find(params[:id])
		tomb.pictures.where(id: params[:tomb_id]).take.try(:destroy)

	  	redirect_to tomb_path, notice: "La imagen fue eliminada con éxito"
	end

	private
	  def pictures_params
	    params.require(:picture).permit(:image).merge(tomb: @tomb)
	  end


end
