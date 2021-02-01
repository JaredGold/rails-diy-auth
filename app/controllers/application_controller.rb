class ApplicationController < ActionController::Base
  helper_method :current_user, :authenticate_user
  def current_user
    if session[:user_id]
      @current_user ||= User.find(session[:user_id])
    else
      @current_user = nil
    end
  end

  def authenticate_user
    if session[:user_id]
      return true
    end

    redirect_to signin_path, alert: "You shall not pass!"
  end
end
