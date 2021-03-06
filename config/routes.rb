Rails.application.routes.draw do
  root to: 'microposts#index'

  devise_for :kitchencars, controllers: {
    sessions: 'kitchencars/sessions',
    registrations: 'kitchencars/registrations',
  }

  resources :kitchencars, only: [:show, :index] do
    resources :menus, only: [:new, :create, :index, :edit, :update, :destroy]
  end

  resources :microposts, only: [:index, :create, :edit, :show, :update, :destroy]
  resources :maps, only: [:index]
end
