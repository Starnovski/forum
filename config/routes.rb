Rails.application.routes.draw do
  get 'topics/index'
  root 'categories#index'
  get 'topic/index'
  namespace :api, defaults: { format: 'json' } do
    namespace :v1 do
      resources :categories
    end
  end
  resources :categories do
    resources :topics do
      resources :comments
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
