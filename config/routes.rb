Rails.application.routes.draw do
  devise_for :parents

  resources :pods
  resources :parents, only: [:edit, :show, :update] do
    resources :students
  end

  root to: 'pods#index'
end
