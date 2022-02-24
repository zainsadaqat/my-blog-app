Rails.application.routes.draw do
  root to: "users#index", as: 'users'
  get "/users/:id", to: "users#show", as: 'user'

  get "/users/:id/posts", to: "posts#index", as: 'posts'
  get "/users/:id/posts/:id", to: "posts#show", as: 'post'
end
