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
  devise_scope :students do
    get "students/auth/github/callback" => "students/omniauth_callbacks#github"
  end

  devise_for :teachers, path: 'teachers',
  controllers:
  { sessions:           "teachers/sessions",
    passwords:          "teachers/passwords",
    registrations:      "teachers/registrations",
    confirmations:      "teachers/confirmations"
#    omniauth_callbacks: "teachers/omniauth_callbacks"
  }
  devise_scope :teachers do
    get "teachers/auth/github/callback" => "teachers/omniauth_callbacks#github"
  end

  resources :students, :teachers

  resources :courses, only: [:show] do
    resources :assignments except: [:index], controller: 'courses/assignments'
  end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
