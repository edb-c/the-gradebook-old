class TeacherCourse < ApplicationRecord
  belongs_to :teacher, optional: :true
  belongs_to :course, optional: :true
  
end
