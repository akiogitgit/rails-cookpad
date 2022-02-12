Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # app/controllers/home_controllerが呼び出され、
  # そこでhome/indexが呼び出される
  root to: "home#index"
end
