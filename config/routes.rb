Rails.application.routes.draw do
  get 'pods/index'
  devise_for :parents
  root to: 'parents#show'
  resources :parents, only: [:edit, :show, :update] do
    resources :students
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
