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

  devise_for :teachers, path: 'teachers',

  controllers:
  { sessions:           "teachers/sessions",
    passwords:          "teachers/passwords",
    registrations:      "teachers/registrations",
    confirmations:      "teachers/confirmations",
    omniauth_callbacks: "teachers/omniauth_callbacks"
  }

# Work-around for #passthru method not working in original form
  def devise_omniauth_callback(mapping, controllers)
    path, @scope[:path] = @scope[:path], nil
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

  resources :teacher_courses
  resources :student_courses

#Nested resource/routes - captures parent/child relationship
  resources :courses, only: :index do
  resources :course_details, controller: 'courses/course_detail'
 end

  resources :students, only: [:index, :show]

  patch '/courses/:course_id/course_details/:id', to: 'courses/course_detail#update'

#Future Development Tasks for The-Gradebook Admin
#  resources :teachers
#  resources :students #modify student roster
end
