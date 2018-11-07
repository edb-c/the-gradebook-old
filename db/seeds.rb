=begin
Teacher.create!(
prefix:             'teacher_prefix1',
firstname:          'teacher_firstname1',
lastname:           'teacher_lastname1',
email:              'teacher1@email.com',
password:           'password1'
)
Teacher.create!(
prefix:             'teacher_prefix2',
firstname:          'teacher_firstname2',
lastname:           'teacher_lastname2',
email:              'teacher2@email.com',
password:           'password2'
)
Teacher.create!(
prefix:             'teacher_prefix3',
firstname:          'teacher_firstname3',
lastname:           'teacher_lastname3',
email:              'teacher3@email.com',
password:           'password3'
)

Student.create!(
firstname:          'firstname1',
lastname:           'lastname1',
email:              'student1@email.com',
password:           'spassword1'
)

Student.create!(
firstname:          'firstname2',
lastname:           'lastname2',
email:              'student2@email.com',
password:           'spassword2'
)

Student.create!(
firstname:          'firstname3',
lastname:           'lastname3',
email:              'student3@email.com',
password:           'spassword3'
)

Course.create!(
course_name:        'Math',  #course_id = 1
)

Course.create!(
course_name:        'Science',  #course_id = 2
)
Course.create!(
course_name:        'Technology',  #course_id = 3
)

Course.create!(
course_name:        'Social Studies',  #course_id = 4
)

StudentCourse.create!(
student_id:          1,
course_id:           1
)
StudentCourse.create!(
student_id:          1,
course_id:           2
)
StudentCourse.create!(
student_id:          1,
course_id:           3
)
StudentCourse.create!(
student_id:          2,
course_id:           1
)
StudentCourse.create!(
student_id:          2,
course_id:           2
)
StudentCourse.create!(
student_id:          2,
course_id:           3
)
StudentCourse.create!(
student_id:          3,
course_id:           1
)
StudentCourse.create!(
student_id:          3,
course_id:           2
)

StudentCourse.create!(
student_id:          3,
course_id:           3
)

StudentCourse.create!(
student_id:          1,
course_id:           4
)

TeacherCourse.create!(
teacher_id:          1,
course_id:           1
)

TeacherCourse.create!(
teacher_id:          1,
course_id:           4
)

TeacherCourse.create!(
teacher_id:          2,
course_id:           2
)
TeacherCourse.create!(
teacher_id:          3,
course_id:           3
)
CourseDetail.create(
assignment_name:    'Math Assignment1',
assignment_grade:   100,
course_id:           1, #Math
teacher_id:          1, #Math Teacher
student_id:          1
)

CourseDetail.create(
assignment_name:    'Math Assignment1',
assignment_grade:   95,
course_id:           1, #Math
teacher_id:          1, #Math Teacher
student_id:          2
)
CourseDetail.create(
assignment_name:    'Math Assignment1',
assignment_grade:   90,
course_id:           1, #Math
teacher_id:          1, #Math Teacher
student_id:          3
)

CourseDetail.create(
assignment_name:    'Science Assignment1',
assignment_grade:    90,
course_id:           2, #Science
teacher_id:          2, #Science Teacher
student_id:          1
)
CourseDetail.create(
assignment_name:    'Science Assignment1',
assignment_grade:   90,
course_id:           2, #Science
teacher_id:          2, #Science Teacher
student_id:          2
)
CourseDetail.create(
assignment_name:    'Science Assignment1',
assignment_grade:   95,
course_id:           2, #Science
teacher_id:          2, #Science Teacher
student_id:          3
)
CourseDetail.create(
assignment_name:    'Technology Assignment1',
assignment_grade:    100,
course_id:           3, #Technology - References Courses.course_id
teacher_id:          3, #Technology Teacher
student_id:          1
)

CourseDetail.create(
assignment_name:    'Technology Assignment1',
assignment_grade:   85,
course_id:           3, #Technology
teacher_id:          3, #Technology Teacher
student_id:          2
)
CourseDetail.create(
assignment_name:    'Technology Assignment1',
assignment_grade:   80,
course_id:           3, #Technology
teacher_id:          3, #Technology Teacher
student_id:          3
)
CourseDetail.create(
assignment_name:    'Science Assignment2',
assignment_grade:   78,
course_id:           2, #Science
teacher_id:          2, #Science Teacher
student_id:          2
)
CourseDetail.create(
assignment_name:    'Technology Assignment2',
assignment_grade:   90,
course_id:           3, #Technology
teacher_id:          3, #Technology Teacher
student_id:          3
)

CourseDetail.create(
assignment_name:    'Technology Assignment2',
assignment_grade:   90,
course_id:           3, #Technology
teacher_id:          3, #Technology Teacher
student_id:          1
)

CourseDetail.create(
assignment_name:    'Social Studies Assignment1',
assignment_grade:   97,
course_id:           4, #Social Studies
teacher_id:          1, #Social Studies Teacher
student_id:          1
)
=end
CourseDetail.create(
assignment_name:    'Math Assignment2',
assignment_grade:   65,
course_id:           1, #Math
teacher_id:          1, #Math Teacher
student_id:          1
)
CourseDetail.create(
assignment_name:    'Math Assignment2',
assignment_grade:   70,
course_id:           2, #Science
teacher_id:          2, #Science Teacher
student_id:          2
)
CourseDetail.create(
assignment_name:    'Technology Assignment2',
assignment_grade:   68,
course_id:           3, #Technology
teacher_id:          3, #Technology Teacher
student_id:          2
)
CourseDetail.create(
assignment_name:    'Social Studies Assignment2',
assignment_grade:   50,
course_id:           4, #Social Studies
teacher_id:          1, #Social Studies Teacher
student_id:          2
)
