module ApplicationHelper

  def hello
    puts "ec - In ApplicationHelper"
  end

  def get_student_name(student_id)
    puts "ec - In ApplicationHelper - get student name2(student_id)"
     sLastName = Student.find(student_id).lastname.capitalize
     sFirstName = Student.find(student_id).firstname.capitalize
     student_name = sLastName + ", " + sFirstName
     student_name
  end

  def get_course_name(course_id)
    Course.find(course_id).course_name
  end

end
