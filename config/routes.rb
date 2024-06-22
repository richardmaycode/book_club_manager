Rails.application.routes.draw do
  namespace :clubs do
    get "meetings/index"
    get "memberships/index"
    get "books/index"
  end
  resources :clubs do
    scope module: "clubs" do
      resources :books, only: [ :index ]
      resources :memberships, only: [ :index ]
      resources :meetings, only: [ :index, :show ]
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
