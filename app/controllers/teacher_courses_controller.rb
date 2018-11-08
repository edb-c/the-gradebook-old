class TeacherCoursesController < ApplicationController

  def index
    teacher_courses_path
  end

  def show
    @teachercourse = TeacherCourse.find(params[:id])
  end

  def edit
  end

  def update
  end


end
