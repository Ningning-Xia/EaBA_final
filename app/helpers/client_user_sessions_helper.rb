module ClientUserSessionsHelper
  def login(user)
	cookies.permanent[:remember_token] = user.remember_token
	self.current_user = user
  end

  def loged_in?
    !current_user.nil?
  end

  def current_user=(user)
    @current_user = user
  end

  def current_user
    @current_user ||= ClientUser.find_by_remember_token(cookies[:remember_token])
  end

  def current_user?(user)
    user == current_user
  end

  def loged_in_user
    unless loged_in?
      store_location
      redirect_to client_user_login_url, notice: "Please login."
    end
  end

  def logout
    current_user = nil
    cookies.delete(:remember_token)
  end

  def redirect_back_or(default)
    redirect_to(session[:return_to] || default)
    session.delete(:return_to)
  end

  def store_location
    session[:return_to] = request.url
  end
end
