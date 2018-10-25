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
      if @zoo.update(zoo_params)
          flash[:notice] = "Successfully updated #{@zoo.name}."
          redirect_to user_zoo_path(current_user, @zoo)
      elsif Zoo.where(name: @zoo.name).exists?
          flash[:error] = "That Zoo already exists!"
          redirect_to edit_user_zoo_path(current_user, @zoo)
      else
          flash[:error] = "Hm.. Something went wrong"
          redirect_to edit_user_zoo_path(current_user, @zoo)
      end
  end


end
