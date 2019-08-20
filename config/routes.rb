Rails.application.routes.draw do
  devise_for :users
  authenticated :user do
    root 'gamecontrols#town'
  end
  root to: 'pages#home'
  get '/town', to: "gamecontrols#town"
  get '/wild', to: "gamecontrols#wild"
  get '/map', to: "gamecontrols#map"
  resources :characters, only: [:show, :new, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
