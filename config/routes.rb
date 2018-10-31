Rails.application.routes.draw do

  root 'home#index'

# Devise Routes -eg. http://localhost:3000/x/sign_in
  devise_for :students, path: 'students',
    controllers:
    { sessions:           "students/sessions",
      passwords:          "students/passwords",
      registrations:      "students/registrations",
      confirmations:      "students/confirmations"
#      omniauth_callbacks: "students/omniauth_callbacks"
    }
  devise_scope :teachers do
    get "teachers/auth/github/callback" => "teachers/omniauth_callbacks#github"
end
  devise_for :teachers, path: 'teachers',

  controllers:
  { sessions:           "teachers/sessions",
    passwords:          "teachers/passwords",
    registrations:      "teachers/registrations",
    confirmations:      "teachers/confirmations",
    omniauth_callbacks: "teachers/omniauth_callbacks"
  }
#https://github.com/login/oauth/authorize?client_id=4aee31ecd4ce5a703eea
#https://github.com/login/oauth/authorize?client_id=4aee31ecd4ce5a703eea&scope=repo

def devise_omniauth_callback(mapping, controllers) #:nodoc:
    path, @scope[:path] = @scope[:path], nil
    # path_prefix = Devise.omniauth_path_prefix || "/#{mapping.path}/auth".squeeze("/") # Temporary fixed
    path_prefix, callback_prefix = Devise.omniauth_path_prefix, "/#{mapping.path}/auth".squeeze("/")
    set_omniauth_path_prefix!(path_prefix)

    providers = Regexp.union(mapping.to.omniauth_providers.map(&:to_s))

    match "#{path_prefix}/:provider",
      :constraints => { :provider => providers },
      :to => "#{controllers[:omniauth_callbacks]}#passthru",
      :as => :omniauth_authorize,
      :via => [:get, :post]

    match "#{path_prefix}/:action/callback",
      :constraints => { :action => providers },
      :to => controllers[:omniauth_callbacks],
      :as => :omniauth_callback,
      :via => [:get, :post]
  ensure
    @scope[:path] = path
  end

  resources :students
  resources :teachers
  resources :teacher_courses
  resources :student_courses

#Nested resource/routes - captures parent/child relationship
  resources :courses do
  resources :course_details, controller: 'courses/course_detail'
 end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
