class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def new
    @student = Student.new 
  end

  def show
    @student = Student.find(params[:id])
  end

  def create
    student = Student.create!(user_params)
    redirect_to student
  end

  private
  def user_params
    params.require(:student).permit(:avatar)
  end
end
