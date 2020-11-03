Rails.application.routes.draw do
  resources :students
  get 'pods/index'
  devise_for :parents
  
   root to: 'pods#index'
   
   resources :parents, only: [:edit, :show, :update]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
