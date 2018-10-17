class Courses::AssignmentsController < ApplicationController

  def index
    @assignments = Assignment.all
  end

# GET
  def new
    @course = Course.find(params[:course_id])
    @assignment = Assignment.new    
  end

# GET
  def edit
  end

end
