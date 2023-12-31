Rails.application.routes.draw do
  devise_for :users
  get 'home/about' => "homes#about"
  root to: "homes#top"
  resources :books do
    resource :favorites, only: [:create, :destroy]
    resources :book_comments, only: [:create, :destroy]
  end
  resources :users

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
