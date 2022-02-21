Rails.application.routes.draw do
  devise_for :users
  root to: "homes#top"
  # get 'homes/top'
  get 'home/about' => "homes#about"
  # get 'users/edit' => "users#edit", as: edit_users


  resources :books, only: [:show, :edit, :index, :create, :update, :destroy]
  resources :users, only: [:show, :edit, :update, :index]




  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
