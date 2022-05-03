Rails.application.routes.draw do
  resources :feeds
  resources :contacts
  get 'sessions/new'
  resources :blogs
  resources :posts
  get '/', to: 'posts#index'
  resources :posts do
    collection do
      post :confirm
    end
  end
  resources :sessions, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create, :show]
  resources :favorites, only: [:create, :destroy]
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
end
