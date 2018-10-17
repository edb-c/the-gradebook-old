class CoursesController < ApplicationController

  def show
    @course = Course.find(params[:id])
    @assignments = @course.assignments
  end
  
end
