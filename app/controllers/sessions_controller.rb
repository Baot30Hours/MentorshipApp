class SessionsController < ApplicationController

  def new
 flash.now[:danger] = 'session.new'
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      flash[:notice] = "authentication passed"
      log_in user
      remember user
      redirect_to user
    else
      flash.now[:danger] = "Invalid email/password combination"
      render 'new'
    end
  end

  def destroy
    logger.debug "start destroy session"
    log_out
    cookies.delete :user_id
    cookies.delete :_mentorship_app_session
    render 'welcome/index'
  end
end
