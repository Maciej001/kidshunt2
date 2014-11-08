Rails.application.routes.draw do
  root to: "posts#index"

  resources :posts, only: [:index, :create, :update, :destroy]

  get '*any' => 'posts#index'
end
