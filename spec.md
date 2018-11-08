# Specifications for the Rails Assessment

Specs:
- [x] Using Ruby on Rails for the project
- [x] Include at least one has_many relationship
- [x] Include at least one belongs_to relationship
- [x] Include at least one has_many through relationship
- [x] The "through" part of the has_many through includes at least one user submittable
      attribute (attribute_name e.g. courses.course_detail.assignment_grade)
- [x] Include reasonable validations for simple model objects (list of model objects with
      validations e.g. Teacher, Student, CourseDetail )
- [x] Include a class level ActiveRecord scope method (CourseDetail model - scope       
      :at_risk_students)
- [x] Include signup - using Devise
- [x] Include login  - using Devise
- [x] Include logout - using Devise
- [x] Include third party signup/login through Github -using Devise/OmniAuth
- [x] Include nested resource show or index (URL - courses/course_detail#index)
- [x] Include nested resource "new" form (URL - courses/course_detail#new)
- [x] Include form display of validation errors (view course_detail/ form.html)

Confirm:
- [x] The application is pretty DRY
- [x] Limited logic in controllers
- [x] Views used helper methods
- [x] Views used partials

# Sample Data to use for Testing

![localhost](https://github.com/edb-c/the-gradebook/blob/master/test_logins.png)
