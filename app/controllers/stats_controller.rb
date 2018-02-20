class StatsController < ApplicationController
  before_action :set_stat, only: [:show, :edit, :update, :destroy]
  #activado? before_action :admin_user, only: [:destroy, :edit, :show]
  before_action :logged_in_user, only: [:new, :create, :update]

  # GET /stats
  # GET /stats.json
  def index
    @stats = Stat.all
  end

  # GET /stats/1
  # GET /stats/1.json
  def show
  end

  # GET /stats/new
  def new
    @stat = Stat.new
  end

  # GET /stats/1/edit
  def edit
  end

  # POST /stats
  # POST /stats.json
  def create
    @stat = current_user.create_stat
    redirect_to edit_stat_stat_step_path(@stat, "basic_info")

    # respond_to do |format|
    #   if @stat.save(validation: false)
    #     format.html { redirect_to @stat, notice: 'Stat was successfully created.' }
    #     format.json { render :show, status: :created, location: @stat }
    #   else
    #     format.html { render :new }
    #     format.json { render json: @stat.errors, status: :unprocessable_entity }
    #   end
    # end
  end

  # PATCH/PUT /stats/1
  # PATCH/PUT /stats/1.json
  def update
    respond_to do |format|
      if @stat.update(stat_params)
        format.html { redirect_to @stat, notice: 'Stat was successfully updated.' }
        format.json { render :show, status: :ok, location: @stat }
      else
        format.html { render :edit }
        format.json { render json: @stat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stats/1
  # DELETE /stats/1.json
  def destroy
    @stat.destroy
    respond_to do |format|
      format.html { redirect_to stats_url, notice: 'Stat was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stat
      @stat = Stat.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def stat_params
      return {} unless params[:stat].present?
      params.require(:stat).permit(:gender, :b_year, :c_status, :email, :cfc_1,
                                   :cfc_2, :cfc_3, :cfc_4, :cfc_5, :cfc_6,
                                   :cfc_7, :cfc_8, :cfc_9, :cfc_10, :cfc_11,
                                   :cfc_12, :cfc_13, :cfc_14, :svo_1, :svo_2,
                                   :svo_3, :svo_4, :svo_5, :svo_6)
    end
end
