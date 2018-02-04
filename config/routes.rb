Rails.application.routes.draw do
  resources :registration, only: [:create, :new]

  resources :link, only: [:create, :new, :show]

  resources :barcode, only: [:show]

  root 'barcode#show'
end
