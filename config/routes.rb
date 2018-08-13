Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api, defaults: {format: :json} do
    resource :session, only: [:create, :destroy]
    resource :users, only: [:create, :destroy, :show]

    resources :businesses, only: [:create, :show, :index, :update]
    resources :reviews, only: [:create, :index, :show, :update, :destroy]
  end


  root to: 'static_pages#root'
end
