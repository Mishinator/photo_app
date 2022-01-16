Rails.application.routes.draw do
  resources :images
  devise_for :users, :controllers => { :registrations => 'registrations' }
  resources :charges, only: [:new, :create]
  root 'welcome#index'
  get 'image_new', to: 'images#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
