Rails.application.routes.draw do

  root to: 'homes#top'
  get 'home/about' => 'homes#about'
  devise_for :users
  resources :books
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  resources :users, only: [:show, :edit, :update, :index]
end
