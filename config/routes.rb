Rails.application.routes.draw do

  root "sessions#new"
  get    "application" => "application#index"

  get    "signup"  => "users#new"
  get    "login"   => "sessions#new"
  post   "login"   => "sessions#create"
  delete "logout"  => "sessions#destroy"

  get    "characters" => "characters#index"

  resources :favorites
  resources :users #, :only => [:new, :create, :show, :edit, :destroy]

end
