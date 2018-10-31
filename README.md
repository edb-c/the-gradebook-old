# The Gradebook application

This application is created to demonstrate ability to
  - Build a complete Ruby on Rails application that allows teachers and/or students
  to record and/or review course assignments and grades.
  - Develop database design and normailization
  - Manage related data through complex forms and RESTful routes.
  - Implement standard user authentication as well as login from Github
  - Develop views using Materialize CSS for responsive design

# This application allows a Teacher to
  - Register for an account
  - Log into their account
  - Log out of their account
  - Create, Read, Update, Delete - courses, students, assingments
  
# This application allows a Student to
  - Register for an account
  - Log into their account
  - Log out of their account
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

# License
[MIT License]
