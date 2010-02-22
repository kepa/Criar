class SessionsController < ApplicationController
  def new
  end

  def create
   if params[:password] == "criar"
    session[:logged] = true
    flash[:notice] = "Logged in"
   end
   redirect_to root_path
  end

  def destroy
   session[:logged] = nil 
   flash[:notice] = "Logged out"
   redirect_to root_path
  end

end
