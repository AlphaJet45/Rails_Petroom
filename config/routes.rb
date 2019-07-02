Rails.application.routes.draw do
  devise_for :users
  get 'welcome/index'

  resources :pets
 
  root 'welcome#index'
end