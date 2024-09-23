Rails.application.routes.draw do
  root "users#index"
  get "/users", to: "users#index"
  get "/articles", to: "articles#index"

  # RESTfulなルートを自動生成
  resources :questions
end
