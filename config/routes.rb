Rails.application.routes.draw do

  resources :users
  resources :posts
  resources :comments
  post '/comments/:id/voteup' => 'comments#voteup'
  post '/comments/:id/votedown' => 'comments#votedown'

  resources :tags

  get "/log-in" => "sessions#new"
  post "/log-in" => "sessions#create"
  get "/log-out" => "sessions#destroy", as: :log_out

  root 'posts#index'

  resources :posts
  post '/posts/:id/voteup' => 'posts#voteup'
  post '/posts/:id/votedown' => 'posts#votedown'


  resources :replies
  post '/replies/:id/voteup' => 'replies#voteup'
  post '/replies/:id/votedown' => 'replies#votedown'


  resources :tags

  resources :post_tags

end
