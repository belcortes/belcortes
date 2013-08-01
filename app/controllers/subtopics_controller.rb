class SubtopicsController < ApplicationController

  def index
    @subtopics = Subtopic.where(:topic_id => params[:topic_id])
  end

  def edit
    @subtopic = Subtopic.find(params[:id])
  end

  def update
    @subtopic = Subtopic.find(params[:id])
    if @subtopic.update_attributes(subtopic_params)
      redirect_to subtopics_path
    else
      render :edit
    end
  end

  def new
    @subtopic = Subtopic.new
  end
  def create
    @subtopic = Subtopic.new(subtopic_params)

    if @subtopic.save
      # redirect_to subtopics_path+"?topic_id=#{topic.id}"
      redirect_to subtopics_path, {topic_id: @subtopic.topic_id}
    else
      render :new
    end
  end

    private
  def subtopic_params
    params.require(:subtopic).permit(:name, :topic_id)
  end
end
