class SessionsController < ApplicationController
  def new
  end
 def create
    user = User.find_by_email(params[:email])
    authenticated_user = user.authenticate(params[:password]) if user
    p 'almost authenticated'
    if authenticated_user
      p 'authenticated!'
      session[:user_id] = authenticated_user.id
      redirect_to root_path
    else
      redirect_to sessions_new_path
    end
  end
  def destroy
    session[:user_id] = nil
    redirect_to sessions_new_path
  end
end