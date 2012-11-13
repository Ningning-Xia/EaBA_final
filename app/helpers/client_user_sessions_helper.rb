module ClientUserSessionsHelper
  def client_user_login(user)
	cookies.permanent[:remember_token] = user.remember_token
	self.current_client_user = user
  end

  def client_user_loged_in?
    !current_client_user.nil?
  end

  def current_client_user=(user)
    @current_client_user = user
  end

  def current_client_user
    @current_client_user ||= ClientUser.find_by_remember_token(cookies[:remember_token])
  end

  def current_client_user?(user)
    user == current_client_user
  end

  def client_user_logout
    current_client_user = nil
    cookies.delete(:remember_token)
  end
end
