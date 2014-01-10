Undrhund::Application.routes.draw do

  namespace :cms do
    resources :weapons do
      resources :skins
    end
  end

  mount Kuhsaft::Engine => '/'

end
