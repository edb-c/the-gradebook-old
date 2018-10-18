class Assignment < ApplicationRecord
  belongs_to :student, optional: true
  belongs_to :course,  optional: true
  belongs_to :teacher, optional: true

  validates :assignment_grade, :numericality => { :greater_than_or_equal_to => 0,
                    :less_than_or_equal_to => 100 }
end
