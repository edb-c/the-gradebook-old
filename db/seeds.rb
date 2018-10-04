#For Testing
Teacher.delete_all(conditions = nil)
Student.delete_all(conditions = nil)
Course.delete_all(conditions = nil)
Assignment.delete_all(conditions = nil)

#=begin

Teacher.create(
teacher_username:   'teacher1',
teacher_prefix:     'teacher_prefix1',
teacher_firstname:  'teacher_firstname1',
teacher_lastname:   'teacher_lastname1',
password:           'password1'
)
Student.create(
student_username:   'student1',
student_firstname:  'student_firstname1',
student_lastname:   'student_lastname1',
password:           'password1'
)
Course.create(
course_name:        'Math'
)
Assignment.create(
assignment_name:    'assignment1'
assignment_grade:   'assignment_grade1'
)
