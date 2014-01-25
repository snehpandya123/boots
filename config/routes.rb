Boot::Application.routes.draw do
  
  devise_for :authorizes
  devise_for :hrs
  devise_for :employes
  

 
  resources :vendors
  resources :replications
  resources :assets
  
  get  'amain' , :to => 'auth#main'
  get 'hmain' , :to => 'hrs#hhome'
  get 'emain' , :to => 'employee#emain'
  get "replications/new"
  get "replications/show"
  get "vendors/new"
  get "vendors/show"
  get  'new' , :to => "assets#new"
  get "assets/create"
  get "assets/show"
  get "assets/index"
  
  
  
  
  get '/contact', :to => 'pages#contact' 
  
  get '/about', :to => 'pages#about'
  
  get '/help', :to => 'pages#help'
  
  get '/home', :to => 'pages#home'
  get '/developer', :to => 'pages#developer'

  
  

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
end
