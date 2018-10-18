class Course < ApplicationRecord
  has_many     :students
  has_many     :teachers
  has_many     :assignments
end
