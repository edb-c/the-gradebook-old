Rails.application.routes.draw do

  resources :assignments
  resources :courses
  resources :students
  resources :teachers

  root 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
