class Courses::CourseDetailController < ApplicationController

  def index

  end

  def edit
  		@course_detail = CourseDetail.find(params[:id])
  end

  def new
      @course_detail = CourseDetail.new
  end

  def at_risk
    CourseDetail.at_risk_students
  end

  def show

  end

end
