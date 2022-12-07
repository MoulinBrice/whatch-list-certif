Rails.application.routes.draw do
  root to: "pages#home"
  resources :lists do
    resources :bookmarks
    resources :reviews
  end
end
