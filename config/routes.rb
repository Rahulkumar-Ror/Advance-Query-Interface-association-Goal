Rails.application.routes.draw do
  get 'employees/index'
  get 'query/index'
  get 'p/:id', to: 'profile#show'
  post 'profile/follow', to: 'profile#follow'
  post 'profile/unfollow', to: 'profile#unfollow'
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    passwords: 'users/passwords',
    registrations: 'users/registrations'
  }
  root 'home#index'
  get 'home/:id', to: 'home#profilepage', as: 'profile_page'
end
