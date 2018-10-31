class Teachers::SessionsController < Devise::SessionsController
  before_action :authenticate_teacher!
  skip_before_action :verify_signed_out_user ,:verify_authenticity_token, :only => :create


  def after_sign_in_path_for(teachers)  #instead of #create

    puts "ec- Teachers::SessionsController - after_sign_in_path_for(teachers)"

    teacher_courses_path  #brings to index
  end

  def destroy

    puts "ec- Teachers:SessionsController - def destroy"

#   Devise.sign_out_all_scopes ? sign_out : sign_out(resource_name)
    sign_out @teacher
    redirect_to root_url, notice: "Signed out!"
  end

end
