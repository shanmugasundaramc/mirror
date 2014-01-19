Blogger::Application.routes.draw do  
  resources :phoenixes
  get "phoenixes/destroy(/:id)(.:format)" => "phoenixes#destroy" ,:as => "phoenix_destroy"


  get "user_views/index" => "user_views#index", :as => "user_index"
  get "user_views/show(/:id)(.:format)" => "user_views#show", :as => "user_show"
  #get "page/home" #So here the issue
  #when the route is kept as above, I have the params of months decreasing and increasing as per the links
  #however, if i change the below line the params are not being passed when the page is being reloaded
  get "page/home(/:year(/:month))"=>"page#home", :as=>'page_home_deep'

  get "page/tech"

  get "page/news"
  #post "page/news"

  get "page/facts"

  #get "page/fun"

  match "page/fun(/:id)(.:format)" => "page#fun", :as => "page_fun"
  #match ':page/:fun(/:id)(.:format)'=> "page#fun", :as => 'page_fun'

  get "page/aboutme"

  get "page/login"

  get "say/hello"

  get "say/goodbye"
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
   root :to => 'phoenixes#index' # this helps to move to this location by default

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
   #match ':controller(/:action(/:id))(.:format)'
end
