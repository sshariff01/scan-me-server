Rails.application.routes.draw do
  get 'barcode/index'

  root 'barcode#index'
end
