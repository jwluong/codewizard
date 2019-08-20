Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'ui_kit', to: 'pages#ui_kit'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
