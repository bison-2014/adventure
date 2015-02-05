Rails.application.routes.draw do

  resources :users

  root 'users#index'

  resources :posts

  resources :replies

  resources :tags

  resources :post_tags

end
