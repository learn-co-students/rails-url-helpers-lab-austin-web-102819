class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
  end

  def show
    @student= Student.find(params[:id])
  end

  def activate
    # Create the instance variable @student and set it equal to the student with the same id as what is input in the params
    @student= Student.find(params[:id])
    # Set the student's active attribute equal to whatever is it's opposite. If it's true, set it to false, vice versa
    @student.active = !@student.active 
    # Save these changes to the database
    @student.save
    # Redirect the student to their path. 
    redirect_to student_path(@student)
  end
  private

    def set_student
      @student = Student.find(params[:id])
    end
end