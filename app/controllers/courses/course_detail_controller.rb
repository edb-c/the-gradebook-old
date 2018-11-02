class Courses::CourseDetailController < ApplicationController

  def index

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
