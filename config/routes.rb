Rails.application.routes.draw do
  get 'p/:id', to: 'profile#show'
  post 'profile/follow', to: 'profile#follow'
  post 'profile/unfollow', to: 'profile#unfollow'
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    passwords: 'users/passwords',
    registrations: 'users/registrations'
  }
  root 'home#index'
end
