# frozen_string_literal: true

class Teachers::RegistrationsController < Devise::RegistrationsController
  before_action :configure_sign_up_params, only: [:create]

  def after_sign_in_path_for(teachers)  #instead of #create

    puts "ec- Teachers::RegistrationsController - after_sign_in_path_for(teachers)"

    teacher_courses_path  #brings to index
  end

  protected

# If you have extra params to permit, append them to the sanitizer.
  def configure_sign_up_params
    devise_parameter_sanitizer.permit(:sign_up, keys: [:firstname, :lastname])
  end







end
