
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
Student.create(
firstname:          'firstname1',
lastname:           'lastname1',
email:              'student1@email.com',
password:           'spassword1'
)

Student.create(
firstname:          'firstname2',
lastname:           'lastname2',
email:              'student2@email.com',
password:           'spassword2'
)

Student.create(
firstname:          'firstname3',
lastname:           'lastname3',
email:              'student3@email.com',
password:           'spassword3'
)

Course.create!(
course_name:        'Math',  #course_id = 1
teacher_id:          1, #Math Teacher
student_id:          1
)
Course.create!(
course_name:        'Math',  #course_id = 2
teacher_id:          1, #Math Teacher
student_id:          2
)
Course.create!(
course_name:        'Math',  #course_id = 3
teacher_id:          1, #Math Teacher
student_id:          3
)
Course.create!(
course_name:        'Science',  #course_id = 4
teacher_id:          2, #Science Teacher
student_id:          1
)
Course.create!(
course_name:        'Science',  #course_id = 5
teacher_id:          2, #Science Teacher
student_id:          2
)
Course.create!(
course_name:        'Science',  #course_id = 6
teacher_id:          2, #Science Teacher
student_id:          2
)
Course.create!(
course_name:        'Technology', #course_id = 7
teacher_id:          3, #Technology Teacher
student_id:          1
)
Course.create!(
course_name:        'Technology', #course_id = 8
teacher_id:          3, #Technology Teacher
student_id:          2
)
Course.create!(
course_name:        'Technology', #course_id = 9
teacher_id:          3, #Technology Teacher
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
course_id:           2, #Math
teacher_id:          1, #Math Teacher
student_id:          2
)
Assignment.create(
assignment_name:    'assignment1',
assignment_grade:   90,
course_id:           3, #Math
teacher_id:          1, #Math Teacher
student_id:          3
)

Assignment.create(
assignment_name:    'assignment1',
assignment_grade:   100,
course_id:           4, #Science
teacher_id:          2, #Science Teacher
student_id:          1
)
Assignment.create(
assignment_name:    'assignment1',
assignment_grade:   95,
course_id:           5, #Science
teacher_id:          2, #Science Teacher
student_id:          2
)
Assignment.create(
assignment_name:    'assignment1',
assignment_grade:   90,
course_id:           6, #Science
teacher_id:          2, #Science Teachers
student_id:          3
)
Assignment.create(
assignment_name:    'assignment1',
assignment_grade:   100,
course_id:           7, #Technology
teacher_id:          3, #Technology Teacher
student_id:          1
)
Assignment.create(
assignment_name:    'assignment1',
assignment_grade:   85,
course_id:           8, #Technology
teacher_id:          3, #Technology Teacher
student_id:          2
)
Assignment.create(
assignment_name:    'assignment1',
assignment_grade:   80,
course_id:           9, #Technology
teacher_id:          3, #Technology Teacher
student_id:          3
)
