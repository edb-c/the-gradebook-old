class Assignment < ApplicationRecord
  belongs_to :student
  belongs_to :course

  validates :score, :numericality => { :greater_than_or_equal_to => 0,
                    :less_than_or_equal_to => 100 }
end
