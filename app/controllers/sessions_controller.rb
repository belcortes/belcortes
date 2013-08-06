class SessionsController < ApplicationController
  def new
  end
  def create
    # binding.pry
    p params
    if params[:facebook_login] #they logged in with facebook && they dont have an account with calcacademy
      user = User.find_by_email(params[:email])
      if user.nil?
        user = User.create(
          name: params[:facebook_id],
          email: "facebook+"+params[:facebook_id]+"@facebook.com",
          password: params[:facebook_id]+"+"+params[:facebook_id],
          password_confirmation: params[:facebook_id]+"+"+params[:facebook_id]
        )
      end
      p user
    else
      user = User.find_by_email(params[:email])
    end
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