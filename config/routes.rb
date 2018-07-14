Rails.application.routes.draw do
  get 'categories/index'
  get 'welcome/index'
  resources :livres
  resources :auteurs
  resources :categories
  #resources :categorie, only: [:show, :new]


  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
