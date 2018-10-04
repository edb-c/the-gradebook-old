Rails.application.routes.draw do
  resources :courses
  resources :assignments
  resources :students
  resources :teachers
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
