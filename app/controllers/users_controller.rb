class UsersController < ApplicationController

  def login
    # Render the login page
  end

  def do_login
    # Handle POSTs and log the user in
    user = User.find_by(email: params[:session][:email].downcase)

    if user && user.authenticate(params[:session][:password])
      logger.debug "user authenticated!"

      log_in user
      remember user

      redirect_to :controller => 'welcome', :action => 'index'

    else
      flash[:danger] = "Invalid email/password combination"
      logger.debug "Failed to log in"

      redirect_to :action => 'login'
    end
  end

  def logout
    # Logs the user out
    log_out
    cookies.delete :user_id
    cookies.delete :_mentorship_app_session
    render 'welcome/index'
  end 

  def new
    # Render sign up form
    @user = User.new
  end

  def create
    @user = User.new(user_params)
 
    if @user.save

      log_in @user
      remember @user

      redirect_to :controller => 'welcome', :action => 'index'

    else
      render 'new'
    end
  end

  private
    def user_params
      params.require(:user).permit(:userName, :email, :password, :password_confirmation)
    end
end
