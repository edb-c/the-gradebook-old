class Courses::AssignmentsController < ApplicationController

  def index
    
  end

  def show
      @course = Course.find(params[:id])
      @assignments = @course.assignments
  end

end
