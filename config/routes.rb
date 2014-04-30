Boot::Application.routes.draw do
  
  
  get "emps/show"
  get "invards/new"
  get "invards/create"
  get "invards/show"
  get "invards/index"
  get "allots/new"
  get "allots/create"
  get "allots/show"
  get "allots/index"
  get "stocks/new"
  get "stocks/create"
  get "stocks/index"
  get "stocks/show"
  get "ssends/new"
  get "ssends/create"
  get "ssends/show"
  get "ssends/index"
  resources :requisitions
  resources :realassets
  resources :vendors
  resources :pos
  resources :locations
  resources :poapps
  resources :ssends
  resources :stocks
  resources :allots
  resources :invards
  
  
  
  get "poapps/new"
  get "poapps/create"
  get "poapps/show"
  get "poapps/index"
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

 
devise_for :gatekeepers
 devise_scope :gatekeeper do
  get '/glogin' => 'devise/sessions#new'
  get '/glogout' => 'devise/sessions#destroy'
end 
  devise_for :emps 
  resources :emps, :only => [:show]
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
 
  
  
  get 'capax', :to => 'auth#capax'
  get 'po', :to  => 'auth#po'
  get  'amain' , :to => 'auth#main'
  get 'hmain' , :to => 'hrs#hhome'
  get 'emain' , :to => 'employee#emain'
  get 'track' , :to => 'employee#eform'
   get 'charts' , :to => 'employee#charts'
   get 'asst' , :to => 'realassets#new'
   get 'locnnew' , :to => 'locations#new'
    get 'vennew' , :to => 'vendors#new'
    get 'cap', :to=> 'requisitions#cap'
    get 'sen' , :to => 'auth#sen'
    get 'gmain',:to => 'gkpr#ghome'
    
    get 'emps/:id' => 'emps#show'
 
  get "vendors/new"
  get "vendors/show"
 
 
  
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
