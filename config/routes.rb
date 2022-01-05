Rails.application.routes.draw do
  root to: 'homes#top'
  devise_for :kitchencars
  resources :kitchencars, only: [:show]
  resources :microposts, only: [:index, :create, :edit, :update, :destroy]
end
