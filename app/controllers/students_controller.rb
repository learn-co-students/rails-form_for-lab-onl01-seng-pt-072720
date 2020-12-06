class StudentsController < ApplicationController
    def new
		@students = Student.new
    end

    def create
		@students = Student.new(students_params(:first_name, :last_name))
		@students.save
		redirect_to student_path(@students)
	  end
    
	def show
		@students = Student.find(params[:id])
    end

    def edit
		@students = Student.find(params[:id])
	  end
	   
	  def update
		@students = Student.find(params[:id])
		@students.update(students_params(:first_name, :last_name))
		redirect_to student_path(@students)
	  end

	   
	  private
	   
	   
	  # We pass the permitted fields in as *args;
	  # this keeps `post_params` pretty dry while
	  # still allowing slightly different behavior
	  # depending on the controller action. This
	  # should come after the other methods
	   
	  def students_params(*args)
		params.require(:student).permit(*args)
	  end
end
