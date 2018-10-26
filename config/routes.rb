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
#  devise_scope :students do
#    get "students/auth/github/callback" => "students/omniauth_callbacks#github"
#  end

  get 'teachers/auth/:provider/callback', to: 'teachers/sessions#create'
  get 'teachers/auth/failure', to: redirect('/')
  post 'teachers/signout', to: 'teachers/sessions#destroy', as: 'teachers/signout'

  devise_for :teachers, path: 'teachers',

  controllers:
  { sessions:           "teachers/sessions",
    passwords:          "teachers/passwords",
    registrations:      "teachers/registrations",
    confirmations:      "teachers/confirmations",
    omniauth_callbacks: "teachers/omniauth_callbacks"
  }
#  devise_scope :teachers do
#    get "teachers/auth/github/callback" => sessions#create
#   get "teachers/auth/github/callback" => "teachers/omniauth_callbacks#github"
# testing omniauth

#    get "/auth/:provider/callback", to: "teachers/sessions#create"
#    get 'auth/failure', to: redirect('/')
#    delete 'signout', to: 'teachers/sessions#destroy', as: 'signout'

#    root to: 'teachers/sessions#new'


#  end
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
