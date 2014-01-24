Undrhund::Application.routes.draw do
  devise_for :admins

  namespace :cms do
    resources :weapons do
      resources :skins, except: [:index, :show]
    end
  end

  mount Kuhsaft::Engine => '/'

  resources :weapons, only: [:index, :show]

  root 'weapons#index'
end
