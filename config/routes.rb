Rails.application.routes.draw do
  # get "bookmarks/new"
  root "lists#index"
  resources :lists, only: [ :index, :show, :new, :create ] do
    resources :bookmarks, only: [ :new, :create ]
  end
  resources :movies
end
