Rails.application.routes.draw do
  get 'login/new'
  get 'login/create'
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users, controllers: {registrations: 'users/registrations'}
  get 'topics/index'
  root 'categories#index'
  get 'topic/index'
  resources :categories do
    resources :topics do
      resources :comments
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
