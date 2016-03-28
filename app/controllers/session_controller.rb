class SessionController < ApplicationController
  def new
  end

  def create
    pm = Projectmanager.find_by :email => params[:session][:email].downcase
    tm = Teammember.find_by :email => params[:session][:email].downcase
    if pm.present? && pm.authenticate("params[:session][:password]")
     flash[:success] ="You have successfully logged in as a Project manager"
     session[:user_id] = pm.id
     session[:projectmanager_id] = pm.id
     session[:is_manager?] = true
     redirect_to root_path
    elsif tm.present? && tm.authenticate(params[:session][:password])
     flash[:success] ="You have successfully logged in as a Team member"
     session[:user_id] = tm.id
     session[:is_manager?] = false
     redirect_to root_path
    else
      flash.now[:danger] ="There was something wrong with your login information"
      redirect_to login_path
    end
  end

  def destroy
      session[:user_id] = nil
      session[:is_manager?] = nil
      flash[:success] ="You have successfully logged out"
      redirect_to root_path
  end
end
