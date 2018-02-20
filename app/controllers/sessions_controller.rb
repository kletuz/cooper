class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(depto: params[:session][:depto].downcase) #parece que hay que actualizar los atributos
    if user && user.authenticate(params[:session][:password])
      log_in user
      if user.admin == true #this conditional avoid evaluate admin by Stat
        puts "««««««««»»»»»»»»"
        puts user
        puts "««««««««»»»»»»»»"
        redirect_to user #aquí se detecta un problema cuando falta 'resources :user'
      else
        if current_user.stat.nil?
          redirect_to stats_path #ruta personalizada
        elsif current_user.stat.svo_6.nil? #evalúa si se contesto hasta el último atributo
          redirect_to edit_stat_stat_step_path(current_user.stat.id, "basic_info")
        else
          redirect_back_or user
        end
      end
    else
      flash.now[:danger] = 'Invalid depto/password combination'
      render 'new'
    end
  end

  def destroy
    log_out
    redirect_to root_url
  end

end
