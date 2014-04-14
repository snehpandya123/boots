Boot::Application.routes.draw do
  
 
  
  
  get "requisitions/new"
  get "requisitions/create"
  get "requisitions/show"
  get "requisitions/index"
  get "requisitions/destroy"
  get "addasst/new"
  get "realassets/new"
  get "realassets/show"
  get "realassets/index"
  get "realassets/create"
  get "realassets/destroy"
  get "locations/new"
  get "locations/show"
  get "locations/index"
  get "locations/destroy"
  get "locations/create"
  
  devise_for :emps 
 devise_scope :emp do
  get '/elogin' => 'devise/sessions#new'
  get '/elogout' => 'devise/sessions#destroy'
end
  devise_for :authorizes 
  devise_scope :authorize  do
  get '/alogin' => 'devise/sessions#new'
  get '/alogout' => 'devise/sessions#destroy'
end

devise_for :hrs 
  devise_scope :hr  do
  get '/hlogin' => 'devise/sessions#new'
  get '/hlogout' => 'devise/sessions#destroy'
end

devise_for :employes 
 
  resources :requisitions
  resources :realassets
  resources :vendors
  resources :pos
  

  resources :locations
  
  get 'capax', :to => 'auth#capax'
  get 'po', :to  => 'auth#po'
  get  'amain' , :to => 'auth#main'
  get 'hmain' , :to => 'hrs#hhome'
  get 'emain' , :to => 'employee#emain'
   get 'charts' , :to => 'employee#charts'
  get "replications/new"
  get "replications/show"
  get "vendors/new"
  get "vendors/show"
 
  get "assets/create"
  get "assets/show"
  get "assets/index"
  
  
  root :to => 'pages#home'
  
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
