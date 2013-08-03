class SubjectsController < ApplicationController
  before_action :ensure_admin, only: [:edit, :update, :destroy, :new, :create]
  before_action :current_user #, only: [:edit, :update, :destroy, :new, :create]
  def index
    @subjects = Subject.all
    p @subjects
  end

  def edit
    @subject = Subject.find(params[:id])
  end

  def update
    @subject = Subject.find(params[:id])
    if @subject.update_attributes(subject_params)
      redirect_to subjects_path
    else
      render :edit
    end
  end
  # var last_question = questions[questions.length - 1];
  def new
    @subject = Subject.new
  end
  def create
    @subject = Subject.new(subject_params)
    if @subject.save
      redirect_to subjects_path
    else
      render :new
    end
  end
  def destroy
    subject = Subject.find(params[:id])
    subject.destroy
    redirect_to :back
  end

  private
  
  def subject_params
    params.require(:new_subject).permit(:name)
  end

end