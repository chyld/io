class SessionController < ApplicationController
  layout 'arc'
  def new
  end
  
  def create
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to tags_path
    else
      redirect_to login_path
    end
  end
  
  def destroy
    session[:user_id] = nil
    redirect_to tags_path
  end
end
