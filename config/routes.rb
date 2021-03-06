Rails.application.routes.draw do
  devise_for :users, :controllers => {sessions: 'sessions', registrations: 'registrations'}
  root to: 'pages#home'
  resources :books, shallow: true, only: [:index,:show, :new, :edit, :create] do
    resources :chapters, only: [:show, :new, :create] do
      resources :reviews, only: [:new, :create]
      resources :follows, only: [:new, :create, :destroy]
      resources :scrolls, only: [:new, :create, :update]
      resources :reads, only: :update
    end
  end

  resources :chapters, only: :show do
    resources :reviews, only: :update
  end

  resources :reviews, only: [] do
    resources :upvotes, only: [:create, :destroy], shallow: true
  end


  resources :users do
    collection do
      get 'dashboard', to: "users#dashboard"
      get 'become_writer', to: "users#become_writer"
    end
  end
  mount Attachinary::Engine => "/attachinary"
end
