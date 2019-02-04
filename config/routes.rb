Rails.application.routes.draw do
  resources :groups, only: [:index, :show] do
    resources :accounts
  end
  resources :athletes, only: [:index, :show]
  resources :events, only: [:index, :show]
  resources :sports, only: [:index, :show]
  resources :people, only: [:index, :show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
