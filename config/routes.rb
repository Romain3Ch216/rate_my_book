Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :books, only: [:index, :show, :new, :edit] do
    resources :chapters, only: [:show, :new]
  end

end
