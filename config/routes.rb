Rails.application.routes.draw do
  get 'restaurants/index'
  get 'restaurants/show'
  get 'restaurants/new'
  get 'restaurants/create'
  get 'restaurants/edit'
  get 'restaurants/update'
  get 'restaurants/destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :restaurants
  # do
  # collection do
    # get "top", to : "restaurants#top"
  # end
  # resources :reviews
end
