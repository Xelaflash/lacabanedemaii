Rails.application.routes.draw do

  devise_for :users
  root to: 'pages#home'

  get 'qui_sommes_nous', to: 'pages#qui_sommes_nous', as: :qui_sommes_nous
  get 'contact',         to: 'pages#contact',         as: :contact
  get 'livraison',       to: 'pages#livraison',       as: :livraison
  get 'faq',             to: 'pages#faq',             as: :faq
  get 'mentions_legales',to: 'pages#mentions_legales',as: :mentions_legales
  get 'CGV',             to: 'pages#CGV',             as: :CGV



end
