Undrhund::Application.routes.draw do
  devise_for :clan_members, controllers: { :registrations => "registrations" }
  devise_for :admins

  namespace :cms do
    resources :clan_members
    resources :weapons do
      resources :skins, except: [:index, :show]
    end
    resources :topics do
      resources :posts, only: :edit
    end
  end

  mount Kuhsaft::Engine => '/'

  resources :weapons, only: [:index, :show]
  resources :clans, only: :index, path: 'fag'
  resources :clan_members, only: :index
  resources :topics, only: [:index, :show]

  authenticated :clan_member do
    resources :clan_members, except: [:update, :delete, :index], path: 'fags'
  end

  root 'home#index'
end
