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

  def update
    @course_detail = CourseDetail.find(params[:id])
    if @course_detail.update(course_detail_params)
      flash[:notice] = "Record successfully updated."
      redirect_to teacher_courses_path  #brings to index
    else
      redirect_to edit_course_course_detail_path("#{params[:course_id]}",course_detail)
    end
  end

## PRIVATE METHODS

  private

  def course_detail_params
    params.require(:course_detail).permit(:assignment_name, :assignment_grade)
  end

end
