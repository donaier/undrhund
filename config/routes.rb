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
  resources :clan_members, only: :index, path: 'fags'

  authenticated :clan_member do
    resources :clan_members, except: [:delete, :index], path: 'fags'
    get '/clan_member/update_steam_data', to: 'clan_members#update_steam_data'
    resources :topics, only: [:index, :show], path: 'fag-board' do
      resources :posts, only: :create
    end
  end

  root 'home#index'
end
