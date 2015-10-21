Rails.application.routes.draw do
  devise_for :users
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root :to => 'home#index'


  namespace :api, :defaults => {:format => :json} do
    resources :posts, :only => [:index, :show, :destroy] do
      resources :comments, :only => [:index]
    end
  end

  resources :posts, :only => [:create, :destroy, :update, :new]

end
