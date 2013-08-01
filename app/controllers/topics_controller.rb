class TopicsController < ApplicationController

  def index
    @topics = Topic.where(:subject_id => params[:subject_id])
  end

  def edit
    @topic = Topic.find(params[:id])
  end

  def update
    @topic = Topic.find(params[:id])
    if @topic.update_attributes(topic_params)
      redirect_to topics_path
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

  private
  def topic_params
    params.require(:topic).permit(:name, :subject_id)
  end

end
