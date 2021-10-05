Rails.application.routes.draw do
  resources :articles do
    resources :comments, only: %i[create]
  end
  devise_for :users
  root 'articles#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
