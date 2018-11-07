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
      else
        flash[:notice] = "Record not updated. Please try again."
      end
    redirect_to course_course_details_path("#{params[:course_id]}")
  end

  def destroy
    @course_detail = CourseDetail.find(params[:id])
    @course_detail.delete
    flash[:notice] = "Record successfully deleted."
    redirect_to course_course_details_path("#{params[:course_id]}")
  end

## PRIVATE METHODS

  private

  def course_detail_params
    params.require(:course_detail).permit(:assignment_name, :assignment_grade)
  end

end
