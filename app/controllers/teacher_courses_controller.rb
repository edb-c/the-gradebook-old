class TeacherCoursesController < ApplicationController

  def index
    teacher_courses_path
  end

  def show
    @teachercourse = TeacherCourse.find(params[:id])
  end

end
=begin
class SchoolClassesController < ApplicationController

  def index
    @school_classes = SchoolClass.all
  end

  def show
    @school_class = SchoolClass.find_by(id: params[:id])
  end

  def new
    @school_class = SchoolClass.new
  end

  def create
    @school_class = SchoolClass.new(params.require(:school_class))
    @school_class.save
    redirect_to school_class_path(@school_class)
  end

  def edit
    @school_class = SchoolClass.find_by(id: params[:id])
  end

  def update
    @school_class = SchoolClass.find_by(id: params[:id])
    @school_class.update(params.require(:school_class))
    redirect_to school_class_path(@school_class)
  end


end
=end
