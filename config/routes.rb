Rails.application.routes.draw do
  # get 'appts/index'
  # get 'appts/new'
  root 'docs#index'

  resources :users
  resources :docs do
    resources :appts, only: [:index, :new, :create, :destroy]
  end
end