class AnswersController < ApplicationController
  # before_action :ensure_admin, only: [:edit, :update, :destroy, :new, :create]
  def index
    @answers = Answer.where(:question_id => params[:question_id])
    # @question = Question.find_by_id(params[:question_id])
    # @answers = @question.answers 
    render :json => @answers.to_json
  end

  def edit
    @answer = Answer.find(params[:id])
  end

  def update
    @answer = Answer.find(params[:id])
    if @answer.update_attributes(answer_params)
      redirect_to answers_path
    else
      render :edit
    end
  end

  def new
    @answer = Answer.new
  end
  def create
    @answer = Answer.new(answer_params)
    if @answer.save
      redirect_to answers_path
    else
      render :new
    end
  end

  def destroy
    answer = Answer.find(params[:id])
    answer.destroy
    redirect_to :back
  end

  private
  def answer_params
    params.require(:answer).permit(:content, :question_id)
  end
end