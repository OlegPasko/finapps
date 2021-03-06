Finapps::Application.routes.draw do
  match '/inflation',  :to => "inflation#index"
  get "log_out" => "sessions#destroy", :as => "log_out"
  match '/login',  :to => 'sessions#new'   
  resources :sessions
  match '/register',  :to => 'users#new'   
  resources :users
  #match '/adm', :to => 'blogcats#index' 
  resources :posts
  resources :blogcats
  match '/adm',  :to => 'adm#index'
  #match '/adm/editcat',  :to => 'blogcats#edit'
  #match '/adm/newcat',  :to => 'blogcats#new'
  #match '/adm',  :to => 'blogcats#index' 

  
  get "fvcalc/fvcalc"
  # match '/adm/newcat',  :to => 'blogcats#new'
  match '/fvcalc',  :to => 'fvcalc#fvcalc'
  match '/fvcalcres',  :to => 'fvcalc#fvcalcres'
  match '/fvcalcs',  :to => 'fvcalc#fvcalcs'
  match '/fvcalcress',  :to => 'fvcalc#fvcalcress'
  match '/math',  :to => 'simpleapps#math'
  match '/simpleapps',  :to => 'simpleapps#index'  
  match '/kubik',  :to => 'simpleapps#kubik'
  match '/decision',  :to => 'simpleapps#decision'
  match '/happydays',  :to => 'simpleapps#happydays'
  match '/capitalcost',  :to => 'simpleapps#capitalcost'
  root :to => 'posts#index'

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end
