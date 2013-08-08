class TopicsController < ApplicationController
  before_action :ensure_admin, only: [:edit, :update, :destroy, :new, :create]
  def index
    @subject = Subject.find(params[:subject_id])
    @topics = @subject.topics
  end

  def edit
    @topic = Topic.find(params[:id])
  end

  def update
    @topic = Topic.find(params[:id])
    if @topic.update_attributes(topic_params)
      redirect_to subjects_path
    else
      render :edit
    end
  end

  def new
    @topic = Topic.new
  end
  def create
    @topic = Topic.new(topic_params)
    if @topic.save
      redirect_to topics_path
    else
      render :new
    end
  end

  def destroy
    topic = Topic.find(params[:id])
    topic.destroy
    redirect_to :back
  end

  private
  def topic_params
    params.require(:topic).permit(:name, :subject_id)
  end

end
