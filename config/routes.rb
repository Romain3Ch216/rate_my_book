Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :books, shallow: true, only: [:index,:show, :new, :edit, :create] do
    resources :chapters, only: [:show, :new] do
      resources :reviews, only: [:new, :create]
      resources :follows, only: [:new, :create, :destroy]
    end
  end

   resources :reviews, only: [] do
      resources :upvotes, only: [:create]
   end


  resources :users do
    collection do
      get 'dashboard', to: "users#dashboard"
      get 'become_writer', to: "users#become_writer"
    end
  end
  mount Attachinary::Engine => "/attachinary"
end
