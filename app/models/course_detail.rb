class CourseDetail < ApplicationRecord
  belongs_to :student, optional: :true
  belongs_to :course, optional: :true
  belongs_to :teacher, optional: :true

  has_many  :teachers, through: :teacher_courses
  has_many  :students, through: :student_courses

  scope :at_risk_students, -> { where("assignment_grade < 75") }

  validates :assignment_grade, :numericality => { :greater_than_or_equal_to => 0,
                    :less_than_or_equal_to => 100 }
  validates :assignment_name,  presence: true

end
