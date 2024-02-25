Rails.application.routes.draw do
  namespace :clubs do
    get 'memberships/index'
    get "books/index"
  end
  resources :clubs do
    scope module: "clubs" do
      resources :books, only: [ :index ]
      resources :memberships, only: [ :index ]
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
