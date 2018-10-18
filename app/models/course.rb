class Course < ApplicationRecord
  belongs_to   :teachers, optional: true
  belongs_to   :students, optional: true
  has_many     :assignments
end
