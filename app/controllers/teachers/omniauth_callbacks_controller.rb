# frozen_string_literal: true
class Teachers::OmniauthCallbacksController < Devise::OmniauthCallbacksController

  def github
    puts "ec- Teachers::OmniauthCallbacksController - def github"
    @teacher = Teacher.from_omniauth(request.env["omniauth.auth"])
    sign_in_and_redirect @teacher

  end

  def after_sign_in_path_for(teachers)  #instead of #create
    puts "ec- Teachers::SessionsController - after_sign_in_path_for(teachers)"
    teacher_courses_path  #brings to index
  end

  def failure
    redirect_to root_path
  end

end
