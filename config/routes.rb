Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :portfolios
  resources :blogs do
    member do
      get :toggle_status
    end
  end

  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'
end
