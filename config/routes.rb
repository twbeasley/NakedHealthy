Rails.application.routes.draw do
  devise_for :users
 root 'static_pages#index'
  resources :articles do
    resources :comments, only: :create
    resources :photos, only: :create
  end
end
