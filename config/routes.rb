Rails.application.routes.draw do
  get 'levels/index'
  devise_for :users
  authenticated :user do
    root 'gamecontrols#town'
  end
  root to: 'pages#home'
  get 'ui_kit', to: 'pages#ui_kit'
  get '/town', to: "gamecontrols#town"
  get '/wild', to: "gamecontrols#wild"
  get '/result', to: "gamecontrols#result"
  get '/close_profile', to: "gamecontrols#close_profile"
  resources :characters, only: [:show, :new, :create]
  resources :questions, only: [:show]
  resources :levels, only: [:show]
  resources :battle_logs, only: [:create, :update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
