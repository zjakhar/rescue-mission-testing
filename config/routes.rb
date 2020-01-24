Rails.application.routes.draw do
  root 'questions#index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :questions, only: [:index, :show, :new, :create] do
    resources :answers, only: [:index, :create, :new]
  end
end
