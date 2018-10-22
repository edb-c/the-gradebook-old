class Courses::AssignmentsController < ApplicationController

  def index

  end

  def new
    @assignment = Assignment.new
  end

  def show
      @course = Course.find(params[:id])
      @assignments = @course.assignments
  end

end
