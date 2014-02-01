Undrhund::Application.routes.draw do
  devise_for :admins

  namespace :cms do
    resources :weapons do
      resources :skins, except: [:index, :show]
    end
  end

  mount Kuhsaft::Engine => '/'

  resources :weapons, only: [:index, :show]
  resources :skins, only: :index
  resources :knives, only: :index
  resources :stats, only: [:index, :create]
  resources :home, only: :index

  root 'home#index'
end
