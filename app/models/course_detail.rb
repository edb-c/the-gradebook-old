class CourseDetail < ApplicationRecord
  belongs_to :student
  belongs_to :course
  belongs_to :teacher

  has_many  :teacher_courses
  has_many  :teachers, through: :teacher_courses

  has_many  :student_courses
  has_many  :students, through: :student_courses

  scope :at_risk_students, -> { where("assignment_grade < 75") }
  
  validates :assignment_grade, :numericality => { :greater_than_or_equal_to => 0,
                    :less_than_or_equal_to => 100 }
 

end

