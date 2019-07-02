Rails.application.routes.draw do
  get 'welcome/index'

  resources :pets
 
  root 'welcome#index'
end