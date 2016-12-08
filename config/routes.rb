Rails.application.routes.draw do

  resources :images
  resources :musics
  resources :videos
  post '/rate' => 'rater#create', :as => 'rate'
  devise_for :users, :controllers => {:omniauth_callbacks => "omniauth_callbacks", :registrations => "registrations"} 
  devise_scope :user do 
    get '/users/sign_out' => 'devise/sessions#destroy'
    get '/users/:id', :to => 'users#show', :as => :user
  end
  resources :users
  # resources :movies
  resources :comments do
    get :get_newest, on: :collection
  end
  resources :reviews
  resources :genres
  resources :actors
  resources :categories

  resources :searches do
    get :live_search, on: :collection
    get :category_search, on: :collection
    get :actor_search, on: :collection
  end

  # Routes for follow favorite movies

  resources :movies do
    resources :favorite_movies, only: [ :create, :destroy ]
    resources :reviews
    member do
      :reviews
    end
  end

  root 'movies#index'
  get '/search', to: 'searches#new'
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
  # devise_scope :user do
  #   delete 'sign_out', :to => 'devise/sessions#destroy', :as => :destroy_user_session
  # end
end
