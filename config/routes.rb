# frozen_string_literal: true

Rails.application.routes.draw do
  root 'dashboard#index'
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  resources :lists

  # Defines the root path route ("/")
  # root "articles#index"
end
