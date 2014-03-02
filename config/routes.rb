Undrhund::Application.routes.draw do
  namespace :cms do
    resources :clan_members
  end

  devise_for :admins

  namespace :cms do
    resources :weapons do
      resources :skins, except: [:index, :show]
    end
  end

  mount Kuhsaft::Engine => '/'

  resources :weapons, only: [:index, :show]
  resources :clans, only: :index, path: 'fags'
  resources :clan_members, except: [:show, :update, :delete]

  root 'home#index'
end
