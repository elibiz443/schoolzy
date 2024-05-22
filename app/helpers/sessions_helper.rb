module SessionsHelper
  def log_in(user)
    session[:user_id] = @user.id
  end

  def current_user
    User.find_by(id: session[:user_id])
  end

  def logged_in?  
    !current_user.nil?
  end

  def authorized!
    if controller_name != "dashboard"
      redirect_to '/' unless logged_in?
    end
  end
end
