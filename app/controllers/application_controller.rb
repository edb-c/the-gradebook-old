class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

#test_omni
#  helper_method :current_teacher

#  def current_teacher
#    session[:teacher_id].nil? ? nil : Teacher.find(session[:teacher_id])
#  end


end
