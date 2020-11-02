Rails.application.routes.draw do
  devise_for :parents
  root to: 'parents#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
