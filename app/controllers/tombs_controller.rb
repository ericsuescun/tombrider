class TombsController < ApplicationController
  # before_action :set_tomb, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]

  # GET /tombs
  # GET /tombs.json
  def index
    @tombs = Tomb.where("ready like ? ", "Si")
    if current_user != nil
      @tombs = current_user.tombs
      if current_user.admin == true
        @tombs = Tomb.all
      end
    end
  end

  # GET /tombs/1
  # GET /tombs/1.json
  def show
    @tomb = Tomb.find(params[:id])
    @entity = Entity.find_by_name(@tomb.entity)
    @pictures = @tomb.pictures
    @customers = @tomb.customers.where("done = ?", false)

  end

  # GET /tombs/new
  def new
    @tomb = Tomb.new
    @entities = Entity.all
    @products = Product.all
  end

  # GET /tombs/1/edit
  def edit
    @tomb = Tomb.find(params[:id])
    @entities = Entity.all
    @products = Product.all
  end

  # POST /tombs
  # POST /tombs.json
  def create
    @tomb = Tomb.new(tomb_params)
    @tomb.user = current_user

    respond_to do |format|
      if @tomb.save
        format.html { redirect_to @tomb, notice: 'El anunció fue creado exitosamente. Nuestra administración lo publicará en breve.' }
        format.json { render :show, status: :created, location: @tomb }
      else
        format.html { render :new }
        format.json { render json: @tomb.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tombs/1
  # PATCH/PUT /tombs/1.json
  def update
    @tomb = Tomb.find(params[:id])
    respond_to do |format|
      if @tomb.update(tomb_params)
        format.html { redirect_to @tomb, notice: 'Tomb was successfully updated.' }
        format.json { render :show, status: :ok, location: @tomb }
      else
        format.html { render :edit }
        format.json { render json: @tomb.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tombs/1
  # DELETE /tombs/1.json
  def destroy
    @tomb = Tomb.find(params[:id])
    @tomb.destroy
    respond_to do |format|
      format.html { redirect_to tombs_url, notice: 'El anuncio ha sido borrado con éxito' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tomb
      @tomb = Tomb.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tomb_params
      params.require(:tomb).permit(:title, :description, :area, :capacity, :code, :notes, :price, :location, :ready, :expdate, :category, :user_id, :entity, :height, :width, :depth, :level, :light)
    end
end
