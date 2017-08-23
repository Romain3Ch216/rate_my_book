Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :books, shallow: true, only: [:index,:show, :new, :edit] do
    resources :chapters, only: [:show, :new] do
      resources :reviews, only: [:new, :create]
    end
  end

end
