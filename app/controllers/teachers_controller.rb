class TeachersController < ApplicationController

# before_action :authenticate_teacher!

#teachers GET /teachers(.:format) teachers#index
  def index
    @teachers = Teacher.all
    @courses  = Course.all
  end

#new_teacher GET /teachers/new(.:format) teachers#new
  def new
    @teacher = Teacher.new
    @courses = Course.new
  end

#edit_teacher GET /teachers/:id/edit(.:format) teachers#edit
  def edit
  end

# POST /teachers(.:format) teachers#create
  def create
    @teacher = Teacher.new(teacher_params)

    respond_to do |format|
      if @teacher.save
        format.html { redirect_to @teacher, notice: 'Item was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
  end

  def show
    redirect_to teachers_path
  end

  def destroy
  end

  private
  def teacher_params
    params.require(:teacher).permit(:password)
  end

end
