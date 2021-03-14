Rails.application.routes.draw do

  # STATIC ROUTES
  root "static#home"
  get '/about-us', to: "static#about"
  get '/services', to: "static#services"
  get '/help', to: "static#help"
  # SESSION ROUTES
  get '/login', to: "session#login"
  post '/login', to: "session#create"
  post '/logout', to: "session#destroy"

  # USER ROUTES && COMPANY ROUTES
  resources :company do
    resources :user do
      resources :notes
    end
    resources :client do
      resources :notes
    end
  end
  # CLIENT ROUTES AND NESTED CLIENT CONTACT ROUTES
  post '/client/new', to: "client#create"
  resources :client do
    resources :client_contact
  end
  # CASE ROUTES
  resources :case
end
