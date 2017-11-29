# frozen_string_literal: true

Rails.application.routes.draw do
  resources :examples, except: %i[new edit]

  # user routes

  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'
  resources :users, only: %i[index show]

  # post routes

  get '/posts' => 'posts#index'
  get '/posts/:id' => 'posts#show'
  # resources :posts, only: %i[]
end
