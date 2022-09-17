Rails.application.routes.draw do
  get 'bookmarks/comment'
  get 'bookmarks/movie_id'
  get 'bookmarks/list_id'
  get 'lists/name'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  #resources :movies
  # Defines the root path route ("/")
  # root "articles#index"
  get 'movies/', to: 'movies#index'
end
