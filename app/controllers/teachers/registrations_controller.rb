# frozen_string_literal: true

class Teachers::RegistrationsController < Devise::RegistrationsController

  def after_sign_in_path_for(teachers)  #instead of #create

    puts "ec- Teachers::RegistrationsController - after_sign_in_path_for(teachers)"

    teacher_courses_path  #brings to index
  end
end
