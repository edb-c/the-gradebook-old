
Teacher.create(
prefix:             'teacher_prefix1',
firstname:          'teacher_firstname1',
lastname:           'teacher_lastname1',
email:              'teacher1@email.com',
password:           'password1'
)
Teacher.create(
prefix:             'teacher_prefix2',
firstname:          'teacher_firstname2',
lastname:           'teacher_lastname2',
email:              'teacher2@email.com',
password:           'password2'
)
Teacher.create(
prefix:             'teacher_prefix3',
firstname:          'teacher_firstname3',
lastname:           'teacher_lastname3',
email:              'teacher3@email.com',
password:           'password3'
)
=begin


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
teacher_id:          1, #Math Teacher
student_id:          1
)
Assignment.create(
assignment_name:    'assignment1',
assignment_grade:   95,
course_id:           1, #Math
teacher_id:          1, #Math Teacher
student_id:          2
)
Assignment.create(
assignment_name:    'assignment1',
assignment_grade:   90,
course_id:           1, #Math
teacher_id:          1, #Math Teacher
student_id:          3
)
Course.create(
course_name:        'Science',
teacher_id:          2, #Science Teacher
student_id:          1
)
Course.create(
course_name:        'Science',
teacher_id:          2, #Science Teacher
student_id:          2
)
Course.create(
course_name:        'Science',
teacher_id:          2, #Science Teacher
student_id:          3
)
Assignment.create(
assignment_name:    'assignment1',
assignment_grade:   90,
course_id:           2, #Science
teacher_id:          2, #Science Teacher
student_id:          1
)
Assignment.create(
assignment_name:    'assignment1',
assignment_grade:   100,
course_id:           2, #Science
teacher_id:          2, #Science Teacher
student_id:          2
)
Assignment.create(
assignment_name:    'assignment1',
assignment_grade:   95,
course_id:           2, #Science
teacher_id:          2, #Science Teacher
student_id:          3
)
Course.create(
course_name:        'Technology',
teacher_id:          3, #Science Teacher
student_id:          1
)
Course.create(
course_name:        'Technology',
teacher_id:          3, #Science Teacher
student_id:          2
)
Course.create(
course_name:        'Technology',
teacher_id:          3, #Science Teacher
student_id:          3
)
Assignment.create(
assignment_name:    'assignment1',
assignment_grade:   100,
course_id:           3, #Technology
teacher_id:          3, #Technology Teacher
student_id:          1
)
Assignment.create(
assignment_name:    'assignment1',
assignment_grade:   85,
course_id:           3, #Technology
teacher_id:          3, #Technology Teacher
student_id:          2
)
Assignment.create(
assignment_name:    'assignment1',
assignment_grade:   80,
course_id:           3, #Technology
teacher_id:          3, #Technology Teacher
student_id:          3
)
=end
