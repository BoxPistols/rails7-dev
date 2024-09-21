Rails.application.routes.draw do
  # users index /indexの省略パス
  get "/users", to: "users#index"

  root "articles#index"
  get "/articles", to: "articles#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
