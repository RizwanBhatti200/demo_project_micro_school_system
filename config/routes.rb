Rails.application.routes.draw do
  namespace :admin do
      resources :parents
      resources :images
      resources :pods
      resources :students
      resources :teachers

      root to: "parents#index"
    end
  devise_for :parents

  resources :teachers, only: [:show, :index]

  resources :pods

  resources :reviews

  resources :join_requests, only: [:create]
  
  resources :parents, only: [:index,:edit, :show, :update] do
    resources :students
  end

  root to: 'pods#index'
end
