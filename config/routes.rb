Rails.application.routes.draw do

  ActiveAdmin.routes(self)
devise_for :users, controllers: { sessions: 'users/sessions' }

  # Sidekiq Web UI, only for admins.
  require "sidekiq/web"
  authenticate :user, lambda { |u| u.admin } do
    mount Sidekiq::Web => '/sidekiq'
  end

  resources :produits, only: [:index, :show] do
    resources :reviews, only: :create
  end
  resource :cart, only: [:show]
  resources :order_items, only: [:create, :update, :destroy]
  resources :gammes, only: [:show]
  resources :contacts, only: [:new, :create]
  resources :orders, only: [:index, :create,:show,:update, :destroy] do
    resources :payments, only: :new
  end

  root to: 'pages#home'

  get 'qui_sommes_nous', to: 'pages#qui_sommes_nous', as: :qui_sommes_nous
  get 'aide',            to: 'pages#aide',             as: :aide
  get 'mentions_legales',to: 'pages#mentions_legales',as: :mentions_legales
  get 'CGV',             to: 'pages#CGV',             as: :cgv
  get 'paiement_reussi', to: 'pages#payment_success', as: :payment_success
  get 'paiement_annule', to: 'pages#payment_cancel', as: :payment_cancel
  mount StripeEvent::Engine, at: '/stripe-webhooks'
end
