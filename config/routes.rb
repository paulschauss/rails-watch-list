Rails.application.routes.draw do
  resources :lists, only: %i[index show create new] do
    resources :bookmarks, only: %i[create new]
  end
  resources :bookmarks, only: [:destroy]
end
