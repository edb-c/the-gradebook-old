class CoursesController < ApplicationController

  def index
  end

  def new
    @course_ = Course.new
  end   

  def show
    @course = Course.find(params[:id])
    @assignments = @course.assignments
  end

end
