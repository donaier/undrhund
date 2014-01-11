Undrhund::Application.routes.draw do

  namespace :cms do
    resources :weapons do
      resources :skins, only: [:create, :edit, :delete, :new]
    end
  end

  mount Kuhsaft::Engine => '/'

  resources :weapons, only: [:index, :show]

  root 'weapons#index'
end
