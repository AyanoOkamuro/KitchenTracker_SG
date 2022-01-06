Rails.application.routes.draw do
  root to: 'homes#top'
  devise_for :kitchencars, controllers: {
    sessions: 'kitchencars/sessions',
    registrations: 'kitchencars/registrations',
  }
  resources :kitchencars, only: [:show]
  resources :microposts, only: [:index, :create, :edit, :update, :destroy]
end
