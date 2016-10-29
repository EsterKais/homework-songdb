Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'artists#index'

  resources :artists, only: [:index, :destroy] do
    get 'delete'

    collection do
      get :order_by_name
      get :order_by_date
    end
  end

  resources :artists, only: [:show, :destroy] do
    get 'delete'
  end

  resources :songs, only: [:new, :create, :destroy] do
    get 'delete'

  end

  resources :photos
end
