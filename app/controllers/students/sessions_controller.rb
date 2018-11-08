# frozen_string_literal: true

class Students::SessionsController < Devise::SessionsController
  # before_action :configure_sign_in_params, only: [:create]

  before_action :authenticate_student!

  def after_sign_in_path_for(students)
    puts "ec- Students::SessionsController - after_sign_in_path_for(students)"
    student_courses_path
  end

end
