module CourseDetailsHelper

  def getAverage(id,student_id)
    CourseDetail.where(course_id: id, student_id: student_id).average(:assignment_grade)
  end
  
end
