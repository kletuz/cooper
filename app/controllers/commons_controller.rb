class CommonsController < ApplicationController
  before_action :set_common, only: [:show, :edit, :update, :destroy]
  before_action :admin_user, only: [:new, :index, :edit, :update, :show, :destroy]

  # GET /commons
  # GET /commons.json
  def index
    @commons = Common.paginate(page: params[:page])
  end

  # GET /commons/1
  # GET /commons/1.json
  def show
    @common = Common.find(params[:id])
  end

  # GET /commons/new
  def new
    @place = Place.find(params[:place_id])
    @common = Common.new
  end

  # GET /commons/1/edit
  def edit
  end

  # POST /commons
  # POST /commons.json
  def create
    @place = Place.find(params[:place_id])
    @common = @place.commons.build(common_params) #updated because Place asociation
    #Se observa que aquí [ »·« ] opera 'resources: commons'
    #sin este chunk no existirían rutas que proporcionar para '/common'
    respond_to do |format|
      if @common.save
        format.html { redirect_to @common, notice: 'Common was successfully created.' }
        format.json { render :show, status: :created, location: @common }
      else
        format.html { render :new }
        format.json { render json: @common.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /commons/1
  # PATCH/PUT /commons/1.json
  def update
    respond_to do |format|
      if @common.update(common_params)
        format.html { redirect_to @common, notice: 'Common was successfully updated.' }
        format.json { render :show, status: :ok, location: @common }
      else
        format.html { render :edit }
        format.json { render json: @common.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /commons/1
  # DELETE /commons/1.json
  def destroy
    @common.destroy
    respond_to do |format|
      format.html { redirect_to commons_url, notice: 'Common was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_common
      @common = Common.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def common_params
      params.require(:common).permit(:plus, :balance, :place_id)
    end

    def admin_user
      redirect_to(root_url) unless current_user.admin?
    end
end
