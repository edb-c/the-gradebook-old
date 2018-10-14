class Course < ApplicationRecord
  belongs_to :teacher
  belongs_to :student
  has_many   :assignments
end
