Undrhund::Application.routes.draw do

  namespace :cms do
    resources :weapons
  end

  mount Kuhsaft::Engine => '/'

end
