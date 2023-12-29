

#PLURAL CONTROLLERS
# Rails.application.routes.draw do
#   resources :sessions, only: [:create]
#   resources :registrations, only: [:create]
#   delete :logout, to: "sessions#logout"
#   get :logged_in, to: "sessions#logged_in"
#   root to: "static#home"

#   # Cambia 'new' por 'create' para manejar la solicitud POST
#   post '/Registration', to: 'registrations#create'

#   get '/favicon.ico', to: 'application#favicon'
# end


Rails.application.routes.draw do
  resources :sessions, only: [:create]
  resources :registrations, only: [:create]
  delete :logout, to: "sessions#logout"
  get :logged_in, to: "sessions#logged_in"
  root to: "static#home"

  # Cambia 'new' por 'create' para manejar la solicitud POST
  post '/registrations', to: 'registrations#create'

  get '/favicon.ico', to: 'application#favicon'
end
