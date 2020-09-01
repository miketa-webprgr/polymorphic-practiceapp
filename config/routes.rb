Rails.application.routes.draw do
  root 'players#index'

  # resources :players do
  #   resources :tags
  # end

  # resources :managers do
  #   resources :tags
  # end

  resources :players
  resources :managers
  resources :tags
  
  # resources :players do
  #   resources :tags, module: :players
  # end

  # resources :managers do
  #   resources :tags, module: :managers
  # end
end
