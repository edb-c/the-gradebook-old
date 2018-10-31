class Teachers::SessionsController < Devise::SessionsController
  before_action :authenticate_teacher!
  skip_before_action :verify_signed_out_user ,:verify_authenticity_token, :only => :create

  def create
      puts "ec- Teachers::SessionsController - def create"
      if auth
        @teacher = Teacher.find_or_create_by(uid: auth['uid']) do |teacher|
          teacher.name = auth['info']['name']
          teacher.email = auth['info']['email']
          teacher.password = SecureRandom.urlsafe_base64
        end
      else
        @teacher = Teacher.find_or_create_by(email: params['email']) do |teacher|
          teacher.name = params['name']
          teacher.email =params['email']
          teacher.password = params['password']
        end
      end

      if @teacher.save
        session[:teacher_id] = @teacher.id
        render 'welcome/home'
      else
        # if email or password incorrect, re-render login page:
        flash.now.alert = "Incomplete form, try again."
        render 'teachers/sessions#new'
      end
    end

    def destroy
      puts "ec- Teachers:SessionsController - def destroy"
#     Devise.sign_out_all_scopes ? sign_out : sign_out(resource_name)
      sign_out @teacher
      redirect_to root_url, notice: "Signed out!"
    end

    private

    def auth
      puts "ec- Teachers:SessionsController - def auth"
      request.env['omniauth.auth']
    end
end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end
