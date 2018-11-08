module CourseDetailsHelper

  def get_student_name
    puts "ec - In CourseDetailsHelper - get student name"
     sLastName = Student.find(@course_detail.student_id).lastname.capitalize
     sFirstName = Student.find(@course_detail.student_id).firstname.capitalize
     student_name = sLastName + ", " + sFirstName
     student_name
  end

  def get_student_name2(student_id)
    puts "ec - In CourseDetailsHelper - get student name2(student_id)"
     sLastName = Student.find(student_id).lastname.capitalize
     sFirstName = Student.find(student_id).firstname.capitalize
     student_name = sLastName + ", " + sFirstName
     student_name
  end

  def get_course_name
    Course.find(params[:course_id]).course_name
  end

end
