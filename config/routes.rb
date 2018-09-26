Rails.application.routes.draw do
  root 'pages#home'
  devise_for :users

  resource :users, only: [:show]
end
