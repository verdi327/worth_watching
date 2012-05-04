class ApplicationController < ActionController::Base
  protect_from_forgery

  helper_method :current_user, :logged_in?

  def logged_in?
    session[:user_id]
  end

  def current_user
    @user = User.find(session[:user_id]) if logged_in?
  end

  def reset_session
    session[:user_id] = nil
  end

  def require_user
    logged_in? == @user.id
  end
end
