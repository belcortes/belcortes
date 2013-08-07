class UsersController < ApplicationController
  before_action :ensure_admin, only: [:index, :edit, :destroy]

  def index
    @users = User.all
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      redirect_to user_path(@user)
    else
      render :edit
    end
  end

  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_path
    else
      render :new
    end
  end

  def destroy
    user = User.find(params[:id])
    user.destroy
    redirect_to :back
  end

  def add_score
    @user = User.find(params[:id])
    score = @user.score + params[:score_increment].to_i
    if @user.update_attribute('score', score)
      puts @user
      puts "User Hash is above"
      render :json => @user
    else
      render :text => 'failed!'
    end
  end

  def add_subtopic
    @user = User.find(params[:id])
    @subtopic = Subtopic.find(params[:subtopic_id])
    unless @user.subtopics.include? @subtopic
      if @user.subtopics.push(@subtopic)
        render :json => @user
      else
        render text: 'not saved'
      end
    else
      render text: 'not saved'
    end
  end
  def add_topic
    @user = User.find(params[:id])
    @topic = Topic.find(params[:topic_id])
    unless @user.topics.include? @topic
      if @user.topics.push(@topic)
        render :json => @user
      else
        render text: 'not saved'
      end
    else
      render text: 'not saved'
    end
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :admin, :score, :subtopics, :identities)
    
  end
end
