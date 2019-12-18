Rails.application.routes.draw do
  get '/login', to:'sessions#new'
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'
  get '/', to:'secrets#show'
end
