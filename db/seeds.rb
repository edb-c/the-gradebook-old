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
Teacher.create(
teacher_username:   'teacher2',
teacher_prefix:     'teacher_prefix2',
teacher_firstname:  'teacher_firstname2',
teacher_lastname:   'teacher_lastname2',
password:           'password2'
)
Teacher.create(
teacher_username:   'teacher3',
teacher_prefix:     'teacher_prefix3',
teacher_firstname:  'teacher_firstname3',
teacher_lastname:   'teacher_lastname3',
password:           'password3'
)
Student.create(
student_username:   'student1',
student_firstname:  'student_firstname1',
student_lastname:   'student_lastname1',
password:           'password1'
)
Student.create(
student_username:   'student2',
student_firstname:  'student_firstname2',
student_lastname:   'student_lastname2',
password:           'password2'
)
Student.create(
student_username:   'student3',
student_firstname:  'student_firstname3',
student_lastname:   'student_lastname3',
password:           'password3'
)
Course.create(
course_name:        'Math',
teacher_id:          1, #Math Teacher
student_id:          1
)
Course.create(
course_name:        'Math',
teacher_id:          1, #Math Teacher
student_id:          2
)
Course.create(
course_name:        'Math',
teacher_id:          1, #Math Teacher
student_id:          3
)
Assignment.create(
assignment_name:    'assignment1',
assignment_grade:   100,
course_id:           1, #Math
student_id:          1
)
