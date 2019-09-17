Rails.application.routes.draw do
  root 'users#top'
  resources :pictures
  resources :sessions, only: [:new, :create, :destroy]
  resources :users
  resources :favorites, only: [:index, :create, :destroy, :show]
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
end
