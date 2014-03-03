Undrhund::Application.routes.draw do
  devise_for :clan_members, controllers: { :registrations => "registrations" }
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
  resources :stats, only: :index
  resources :home, only: :index

  resources :clan_members

  root 'home#index'
end
