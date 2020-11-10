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

  resources :pods do
    resources :reviews
  end
  resources :parents, only: [:edit, :show, :update] do
    resources :students
  end

  root to: 'pods#index'
end
