Rails.application.routes.draw do
  get 'categories/index'
  get 'welcome/index'
  resources :livres
  resources :auteurs
  resources :categories
  resources :sessions
  #resources :categorie, only: [:show, :new]
   
  get 'login' => 'sessions#new'
  get 'logout' => 'sessions#destroy'
  root to: 'livres#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
