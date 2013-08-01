class SubjectsController < ApplicationController

  def index
    @subjects = Subject.all
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

  private
  
  def subject_params
    params.require(:new_subject).permit(:name)
  end

end