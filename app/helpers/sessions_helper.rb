module SessionsHelper

  #Hace el logueo del usuario dado
  def log_in(user)
    session[:user_id] = user.id
  end

  def current_user?(user)
    user == current_user

  end

  #Regresa el usuario logueado actual (si es que hay alguno)
  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def depto_user
    @current_user.depto
  end

  def logged_in?
    !current_user.nil?
  end

  #Log out the current_user
  def log_out
    session.delete(:user_id)
    @current_user = nil
  end

#===

  def redirect_back_or(default)
    redirect_to(session[:forwarding_url] || default)
    session.delete(:forwarding_url)
  end

  # Stores the URL trying to be accessed.
  def store_location
    session[:forwarding_url] = request.original_url if request.get?
  end

  #verifica que todos los atributes de la instancia Stat esten completados
  def full?

  end
end
