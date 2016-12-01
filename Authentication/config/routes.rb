Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get "/", to: "books#index"
  get "/books", to: "books#index"

  get "/books/new", to: "books#new"
  post "/books/create", to: "books#create"

  get "/books/:id", to: "books#show"

  get "/books/:id/edit", to: "books#edit"
  patch "/books/:id", to: "books#update"

  delete "/books/:id", to: "books#destroy"



  get "/signup", to: "users#new"
  post "/users", to: "users#create"

end
