class QuestionsController < ApplicationController

  def index
    @subtopic = Subtopic.find_by_name(params[:subtopic_name])
    @questions = @subtopic.questions
    # @questions = Question.where(:subtopic_id => params[:subtopic_id])
  end

  def edit
    @question = Question.find(params[:id])
  end

  def update
    @question = Question.find(params[:id])
    if @question.update_attributes(question_params)
      redirect_to questions_path
    else
      render :edit
    end
  end

  def new
    @question = Question.new
  end
  def create
    @question = Question.new(question_params)
    if @question.save
      redirect_to questions_path
    else
      render :new
    end
  end

    private
  def question_params
    params.require(:question).permit(:content, :subtopic_id)
  end
end