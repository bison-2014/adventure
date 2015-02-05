Rails.application.routes.draw do

  resources :users
  resources :posts
  resources :comments
  resources :tags

  root 'posts#index'

  resources :posts

  resources :replies

  resources :tags

  resources :post_tags

  resources :posts

  resources :replies

  resources :tags

  resources :post_tags

end
