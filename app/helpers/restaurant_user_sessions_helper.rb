module RestaurantUserSessionsHelper
  def restaurant_user_login(user)
	cookies.permanent[:remember_token] = user.remember_token
	self.current_restaurant_user = user
  end

  def restaurant_user_loged_in?
    !current_restaurant_user.nil?
  end

  def current_restaurant_user=(user)
    @current_restaurant_user = user
  end

  def current_restaurant_user
    @current_restaurant_user ||= RestaurantUser.find_by_remember_token(cookies[:remember_token])
  end

  def current_restaurant_user?(user)
    user == current_restaurant_user
  end

  def restaurant_user_logout
    current_restaurant_user = nil
    cookies.delete(:remember_token)
  end
end
