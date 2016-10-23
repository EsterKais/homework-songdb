Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'artists#index'

  resources :artists, only: [:index, :show] do
    collection do
      get :order_by_name
      get :order_by_date
    end
  end

  resources :photos

  resources :songs, only: [:new, :create, :destroy] do
    get 'delete'
  end
end

# get '/artists/:id/songs/:song_id/delete' => "songs#delete"
# delete '/artists/:id/songs/:song_id' => "songs#destroy"


# get '/artists/:id/songs/:song_id/delete' => "songs#delete"
# delete '/artists/:id/songs/:song_id' => "songs#destroy"
# resources :songs, only: [:new, :create, :destroy] do
#   get "delete"
# end
