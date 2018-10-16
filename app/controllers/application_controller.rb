class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def index
  end

#Helper methods to be used
    helpers do

      def current_user
         @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
      end

#Booleanizing the current_user method
      def logged_in?
        !!current_user
      end

#redirect_if_not_logged_in
      def redirect_if_not_logged_in
        if !logged_in?
          flash[:message] = "You have to be logged in to view that page."
          redirect_to root_path
        end
      end
    end
end
