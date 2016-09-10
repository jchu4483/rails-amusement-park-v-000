Rails.application.routes.draw do

  resources :users
  resources :attractions
  resources :rides, only: :create

  root 'welcome#home'

  get 'signin' => 'sessions#new'
  post 'signin' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'



end
