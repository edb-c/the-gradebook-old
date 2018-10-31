# frozen_string_literal: true
class Teachers::OmniauthCallbacksController < Devise::OmniauthCallbacksController

  def create
    @teacher = Teacher.find_or_create_by(uid: auth['uid']) do |u|
      u.name = auth['info']['name']
      u.email = auth['info']['email']
    end
    session[:teacher_id] = @teacher.id
    render 'teachers/'
  end

  def github
    @teacher = Teacher.from_omniauth(request.env["omniauth.auth"])

    if @teacher.persisted?
      sign_in_and_redirect @teacher, event: :authentication #this will throw if @teacher is not activated
      set_flash_message(:notice, :success, kind: "Github") if is_navigational_format?
    else
      session["devise.github_data"] = request.env["omniauth.auth"]
      redirect_to teacher_github_omniauth_callback_path
    end
  end

  def failure
    redirect_to root_path
  end
