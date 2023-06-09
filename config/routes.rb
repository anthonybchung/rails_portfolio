Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root "static_pages#home"

  # static_pages
  get '/playground',to: 'static_pages#playground'
  get '/resources',to: 'static_pages#resources'
  get '/login',to: 'static_pages#login'
end
