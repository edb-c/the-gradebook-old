class CoursesController < ApplicationController

  def index
  end

  def new
    @course_ = Course.new
  end

  def show
    @course = Course.find(params[:id])
    @course_details = @course_details.assignments
  end

end
