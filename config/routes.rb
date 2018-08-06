Rails.application.routes.draw do
  namespace :admin do
      resources :users
      resources :blogs
      resources :jobs
      resources :portfolios
      resources :skills
      resources :technologies
      resources :topics
      resources :guest_users

      root to: "users#index"
    end
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register'}
  root to: 'pages#home'

  resources :portfolios, except: [:show]
  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'

  get 'privacy', to: 'pages#privacy'

  resources :blogs do
    member do
      get :toggle_status
    end
  end
end
