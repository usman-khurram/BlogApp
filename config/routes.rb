Rails.application.routes.draw do
  devise_for :moderator , controllers:{
    sessions: "moderator/sessions"
  }
  devise_for :admin , controllers:{
    sessions: "admin/sessions"
  }
  devise_for :users, controllers:{
    sessions: "users/sessions"
  }
  resources :mains ,only: [:new,:create,:show]
  root 'mains#index'
  get 'mains/users'
  get 'mains/admin'
  get 'mains/moderator'
  resources :posts
end
