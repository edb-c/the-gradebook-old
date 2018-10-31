# frozen_string_literal: true

class Teachers::SessionsController < Devise::SessionsController
  # before_action :configure_sign_in_params, only: [:create]
  before_action :authenticate_teacher!


# testing omniauth
#def create
#  @teacher = Teacher.find_or_create_by(uid: auth['uid']) do |u|
#    u.name = auth['info']['name']
#    u.email = auth['info']['email']
#  end

#  session[:teacher_id] = @teacher.id

#  render 'teachers/'
#end

private

def auth
  request.env['omniauth.auth']
end
#  def new
#  end

#  def create
#    teacher = Teacher.from_omniauth(env["omniauth.auth"])

#    if teacher.valid?
#      session[:teacher_id] = teacher.id
#      redirect_to request.env['omniauth.origin']
#    end
#  end

#  def destroy
#    reset_session
#    redirect_to request.referer
#  end

  def after_sign_in_path_for(teachers)
    teacher_courses_path  #brings to index
  end

  # GET /resource/sign_in
  # def new
  #   super
  # end

  # POST /resource/sign_in
  # def create
  #   super
  # end

  # DELETE /resource/sign_out
  #def destroy
  #  signed_out = (Devise.sign_out_all_scopes ? sign_out : sign_out(teachers))
  #  set_flash_message! :notice, :signed_out if signed_out
  #  yield if block_given?
  #  respond_to_on_destroy
  #end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end
end
