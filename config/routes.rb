Undrhund::Application.routes.draw do
  devise_for :clan_members, controllers: { :registrations => "registrations" }

  devise_for :admins

  namespace :cms do
    # resources :clan_members
    resources :weapons do
      resources :skins, except: [:index, :show]
    end
  end

  mount Kuhsaft::Engine => '/'

  resources :weapons, only: [:index, :show]
  resources :clans, only: :index, path: 'fag'
  resources :clan_members, except: [:show, :update, :delete], path: 'fags'

  resources :clan_members

  root 'home#index'
end
