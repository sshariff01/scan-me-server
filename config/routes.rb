Rails.application.routes.draw do
  resources :registration, only: [:new, :create]

  get 'link/index'

  get 'barcode/index'

  root 'barcode#index'
end
