class StatStepsController < ApplicationController
  include StatStepsHelper
  before_action :load_stat

  STEPS = %w(basic_info cfc_query svo_query)

  def edit
    if stat_step_model.editable?
      if step.present?
        render step
      else
        render "#{Rails.root.to_s}/public/404.html", :layout => false, :status => 404
      end
    else
      redirect_to :back, :alert => I18n.t("stat.#{@stat.status}_editable_error")
    end
  end

  def update
    if stat_step_model.update_attributes(stat_params || {})
      if next_step && params[:commit].downcase.include?('next')
        redirect_to edit_stat_stat_step_path(stat_step_model, next_step)
      else
        redirect_to stat_path(@stat)  # POST realiza el guardado de la
      end
    else
      render step, :error => "Please complete all required fields"
    end
  end


  private

  def load_stat
    @stat = stat_step_model
  end

  def stat_params
    params.require(:stat).permit("gender", "b_year", "c_status", "email", "cfc_1",
                                 "cfc_2", "cfc_3", "cfc_4", "cfc_5", "cfc_6",
                                 "cfc_7", "cfc_8", "cfc_9", "cfc_10", "cfc_11",
                                 "cfc_12", "cfc_13", "cfc_14", "svo_1", "svo_2",
                                 "svo_3", "svo_4", "svo_5", "svo_6")
  end

end
