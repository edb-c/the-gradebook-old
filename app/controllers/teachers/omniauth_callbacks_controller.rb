# frozen_string_literal: true
class Teachers::OmniauthCallbacksController < Devise::OmniauthCallbacksController

  def create
    puts "ec- Teachers::OmniauthCallbacksController - def create"
    @teacher = Teacher.find_or_create_by(uid: auth['uid']) do |u|
      u.name = auth['info']['name']
      u.email = auth['info']['email']
    end
    session[:teacher_id] = @teacher.id
    render 'teachers/'
  end


  def github
    puts "ec- Teachers::OmniauthCallbacksController - def github"
    @teacher = Teacher.from_omniauth(request.env["omniauth.auth"])
    sign_in_and_redirect @teacher
  end

  def failure
    redirect_to root_path
  end

end
