Rails.application.routes.draw do
  resources :codes
  get 'qr/index'
  get 'qr/show'
  get 'qr/edit'
  get 'qr/update'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
