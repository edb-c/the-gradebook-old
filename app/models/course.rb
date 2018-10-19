class Course < ApplicationRecord
<<<<<<< HEAD
  has_many  :assignments
  has_many  :students, through: :student_courses
  has_many  :teachers, through: :teacher_courses 
=======
  has_many     :students
  has_many     :teachers
  has_many     :assignments
>>>>>>> a12a3e8b62b16b63a54798477a83f1ba90878d4c
end
