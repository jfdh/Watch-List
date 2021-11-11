Rails.application.routes.draw do
  get 'bookmarks/new'
  get 'bookmarks/create'
  resources :lists, only: [ :index, :show, :new, :create ] do
    resources :bookmarks, only: [ :new, :create ]
  end

resources :bookmarks, only: :destroy
end
