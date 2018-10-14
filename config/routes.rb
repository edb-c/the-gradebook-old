Rails.application.routes.draw do

# Devise Routes -eg. http://localhost:3000/x/sign_in
  devise_for :students, path: 'students',
    controllers:
    { sessions:           "students/sessions",
      passwords:          "students/passwords",
      registrations:      "students/registrations",
      confirmations:      "students/confirmations",
    #  omniauth_callbacks: "students/omniauth_callbacks"
    }
  devise_for :teachers, path: 'teachers',
  controllers:
  { sessions:           "teachers/sessions",
    passwords:          "teachers/passwords",
    registrations:      "teachers/registrations",
    confirmations:      "teachers/confirmations",
  #  omniauth_callbacks: "teachers/omniauth_callbacks"
  }

  resources :students
  resources :teachers

  resources :assignments
  resources :courses

  root 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
