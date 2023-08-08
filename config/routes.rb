=begin
  https://guides.rubyonrails.org/routing.html
  this is the routes file for the application as listed on the readme page
  you are able to make a request to the server and get a response back and each are
  mapped to a specific route and a controller action to go along with it
=end

Rails.application.routes.draw do
  get "/articles", to: "articles#index"
  post "/articles", to: "articles#create"
  get "/articles/:id", to: "articles#show"
  delete "/articles/:id", to: "articles#destroy"
  put "/articles/:id", to: "articles#update"
  patch "/articles/:id", to: "articles#patch"
end
