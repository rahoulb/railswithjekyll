Rails.application.routes.draw do
  root 'main#show'
  match '/auth/:provider/callback', to: 'sessions#create', via: [:get, :post]
  match "/logout", to: 'sessions#destroy', via: [:get, :post]
end
