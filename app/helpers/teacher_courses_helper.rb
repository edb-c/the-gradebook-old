module TeacherCoursesHelper

  def getCount(course_id)
    CourseDetail.select(:student_id).distinct.where(course_id: course_id).count
  end

end
