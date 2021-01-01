class StudentsController < ApplicationController
  def new
  end

  def create
	  @student = Student.new
	  @student.title = params[:student][:first_name]
	  @student.room_number = params[:student][:last_name]
	  @student.save
    if @student.save
      redirect_to student_path(@student)
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
  end
end
