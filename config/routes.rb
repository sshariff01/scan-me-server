Rails.application.routes.draw do
  get 'link/index'

  get 'barcode/index'

  root 'barcode#index'
end
