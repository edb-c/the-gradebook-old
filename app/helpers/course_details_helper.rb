module CourseDetailsHelper

  def get_student_name
    puts "ec - In CourseDetailsHelper - get student name"
     sLastName = Student.find(@course_detail.student_id).lastname.capitalize
     sFirstName = Student.find(@course_detail.student_id).firstname.capitalize
     student_name = sFirstName + " " + sLastName
     student_name
  end

  def get_course_name
    Course.find(params[:course_id]).course_name
  end
  
end
