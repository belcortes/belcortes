class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  include Devise::Controllers::Helpers
  def twitter
    # p 'twitter callback info'
    # p request
    p request.env['omniauth.auth']
    p current_user
    # current_user = request.env['omniauth.auth']
    @user = User.find_for_twitter_oauth(request.env['omniauth.auth'], current_user)
    p @user
    if @user.persisted?
      flash[:notice] = 'Successfully connected to Twitter'
    else
      flash[:error] = 'Unable to connect to Twitter'
    end

    # @user = User.new(params[:user])
    # if @user.save
    #   redirect_to root_path
    # else
    #   # This line overrides the default rendering behavior, which
    #   # would have been to render the "create" view.
    #   render :action => "new"
    # end
    # current_user = @user

    redirect_to root_path

  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :admin, :score, :subtopics, :identities)
    
  end
end