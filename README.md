# ----  IN DEVELOPMENT -----

# The Gradebook application

This application is created to demonstrate ability to
  - Build a complete Ruby on Rails application that allows teachers and/or students
  to record and/or review course assignments and grades.
  - Develop database design and normalization
  - Manage related data through complex forms and RESTful routes.
  - Implement standard user authentication as well as login from Github
  - Develop views using Materialize CSS for responsive design

![localhost](https://github.com/edb-c/the-gradebook/blob/master/homepage.png)

# This application allows a Teacher to
  - Register for an account
  - Log in/out their account
  - Log in/out their account using Github
  - Create, Read, Update, Delete - assignments, grades

# This application allows a Student to
  - Register for an account
  - Log in/out their account
  - View courses, assignments grades

# Installation Steps need to run this locally

    $ git clone https://github.com/edb-c/the-gradebook
    $ cd the-gradebook
    $ bundle install
    $ rake db:create  
    $ rake db:migrate
    $ rake db:seed

# Run the server

    $ rails s

Visit the IP server address listed.

# Possible Future Enhancements

  - Streamline user roles, teacher, students, add admin role.
  - Admin role will manage course lists, teacher courses, student rosters.

# License
[MIT License]
