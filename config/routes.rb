Rails.application.routes.draw do
  get 'welcome/index'
  resources :livres
  resources :auteurs
  resources :categories, only: :index
  resources :categorie, only: [:new, :creat, :edit, :update, :destroy]


  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
