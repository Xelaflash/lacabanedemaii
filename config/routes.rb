Rails.application.routes.draw do

  ActiveAdmin.routes(self)
  devise_for :users

  resources :produits, only: [:index, :show] do
    resources :reviews, only: [ :create ]
  end
  resource :cart, only: [:show]
  resources :order_items, only: [:create, :update, :destroy]
  resources :gammes, only: [:show]
  resources :contacts, only: [:new, :create]
  resources :orders, only: [:index, :create,:show, :destroy] do
    resources :payments, only: [:new, :create]
  end

  root to: 'pages#home'

  get 'qui_sommes_nous', to: 'pages#qui_sommes_nous', as: :qui_sommes_nous
  get 'livraison',       to: 'pages#livraison',       as: :livraison
  get 'aide',            to: 'pages#aide',             as: :aide
  get 'mentions_legales',to: 'pages#mentions_legales',as: :mentions_legales
  get 'CGV',             to: 'pages#CGV',             as: :cgv


end
