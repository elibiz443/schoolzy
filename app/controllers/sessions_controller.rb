class SessionsController < ApplicationController
  skip_before_action :authorized!, only: [:index, :new, :create]

  def index; end

  def new; end

  def create
    reset_session
    @user = User.find_by(username: session_params[:username])

    respond_to do |format|
      if @user && @user.authenticate(session_params[:password])
        log_in(@user)
        format.html { 
          redirect_to '/', notice: "Welcome Back #{current_user.first_name} #{current_user.last_name}"
        }
      else
        format.html { redirect_to '/sessions/new', notice: "Wrong Email & Password Confirmation. Plz Try Again!" }
      end
    end
  end

  def destroy
    session.delete(:user_id)
    redirect_to '/login', notice: 'Logged out!'
  end

  private

  def session_params
    params.require(:session).permit(:username, :password)
  end
end
