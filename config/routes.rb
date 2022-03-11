Rails.application.routes.draw do
  devise_for :books
  resources :users
  resources :students
  resources :employees
  root 'employees#index'

end
