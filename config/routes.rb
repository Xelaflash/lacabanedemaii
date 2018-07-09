Rails.application.routes.draw do

  devise_for :users

  resources :produits, only: [:index, :show] do
    resources :reviews, only: [ :create ]
  end
  resource :cart, only: [:show]
  resources :order_items, only: [:create, :update, :destroy]
  resources :gammes, only: [:index, :show]

  root to: 'pages#home'

  get 'qui_sommes_nous', to: 'pages#qui_sommes_nous', as: :qui_sommes_nous
  get 'contact',         to: 'pages#contact',         as: :contact
  get 'livraison',       to: 'pages#livraison',       as: :livraison
  get 'aide',             to: 'pages#aide',             as: :aide
  get 'mentions_legales',to: 'pages#mentions_legales',as: :mentions_legales
  get 'CGV',             to: 'pages#CGV',             as: :cgv


end
