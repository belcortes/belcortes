class AnswersController < ApplicationController

  def index
    @question = Question.find_by_id(params[:question_id])
    @answers = @question.answers
    # @answers = Answer.all
    # @answers = Question.where(:question_id => params[:question_id])
    render :json => @answers.to_json
  end

  def show

  end

  def edit
    @answer = Question.find(params[:id])
  end

  def update
    @answer = Question.find(params[:id])
    if @answer.update_attributes(answer_params)
      redirect_to answers_path
    else
      render :edit
    end
  end

  def new
    @answer = Question.new
  end
  def create
    @answer = Question.new(answer_params)
    if @answer.save
      redirect_to answers_path
    else
      render :new
    end
  end

    private
  def answer_params
    params.require(:answer).permit(:content, :question_id)
  end
end