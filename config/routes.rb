Rails.application.routes.draw do

  ActiveAdmin.routes(self)
  devise_for :users, controllers: { sessions: 'users/sessions' }

  # Sidekiq Web UI, only for admins.
  require "sidekiq/web"
  authenticate :user, lambda { |u| u.admin } do
    mount Sidekiq::Web => '/sidekiq'
  end

  resources :produits, only: [:index, :show] do
    resources :reviews, only: [ :create ]
  end
  resource :cart, only: [:show]
  resources :order_items, only: [:create, :update, :destroy]
  resources :gammes, only: [:show]
  resources :contacts, only: [:new, :create]
  resources :orders, only: [:index, :create,:show,:update, :destroy] do
    resources :payments, only: [:new, :create]
  end

  root to: 'pages#home'

  get 'qui_sommes_nous', to: 'pages#qui_sommes_nous', as: :qui_sommes_nous
  get 'aide',            to: 'pages#aide',             as: :aide
  get 'mentions_legales',to: 'pages#mentions_legales',as: :mentions_legales
  get 'CGV',             to: 'pages#CGV',             as: :cgv

end
