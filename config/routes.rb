Rails.application.routes.draw do
  devise_for :users
  resources :post_images, only: [:new, :create, :index, :show, :destroy]
   resources :users, only: [:show, :edit, :update]
  get 'homes/about' =>'homes#about', as: 'about'
  resources :post_images, only: [:new, :create, :index, :show, :destory] do
   resource :favorites, only: [:create, :destroy]
   resources :post_comments, only: [:create, :destroy]
  end

  # get 'homes/top'
  root to: "homes#top"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
