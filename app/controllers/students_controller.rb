class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def new
  end

  def create
    @student = Student.create(params[:students])
    redirect_to student_path
  end

  def show
    @student = Student.find(params[:id])
  end

end
