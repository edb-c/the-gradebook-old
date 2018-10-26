# frozen_string_literal: true

class Teachers::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  # You should configure your model like this:
  #devise :omniauthable, omniauth_providers: [:github]
  # testing omniauth
  def create
    @teacher = Teacher.find_or_create_by(uid: auth['uid']) do |u|
      u.name = auth['info']['name']
      u.email = auth['info']['email']
    end

    session[:teacher_id] = @teacher.id

    render 'teachers/'
  end
  # You should also create an action method in this controller like this:
  def github
    @teacher = Teacher.from_omniauth(request.env["omniauth.auth"])
    sign_in_and_redirect @teacher
  end

  # More info at:
  # https://github.com/plataformatec/devise#omniauth

  # GET|POST /resource/auth/github
  def passthru
  #  render :file => "#{Rails.root}/public/404.html", :status => 404, :layout => false
  end

  # GET|POST /users/auth/twitter/callback
  # def failure
  #   super
  # end

  # protected

  # The path used when OmniAuth fails
  # def after_omniauth_failure_path_for(scope)
  #   super(scope)
  # end
end
