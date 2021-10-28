Rails.application.routes.draw do
  devise_for :users
  get 'lyrics/index'
  root to: "lyrics#index"
  resources :lyrics, only: %i[index new create show]
  resources :users, only: :show
end
