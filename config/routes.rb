Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  devise_for :users
  root to: 'page#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # APIコントローラへのルーティング
  namespace :api, {format: 'json'} do
    namespace :v1 do
      resources :employees, only: [:index, :show]
    end
  end
  namespace :api, {format: 'json'} do
    namespace :v1 do
      resources :lbmonths, only: [:index, :show, :create, :update]
    end
  end
  
end
