Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/articles", to: "articles#index"
  post "/articles", to: "articles#create"
  get "/articles/:id", to: "articles#show"
  delete "/articles/:id", to: "articles#destroy"
  put "/articles/:id", to: "articles#update"
  patch "/articles/:id", to: "articles#patch"
end
