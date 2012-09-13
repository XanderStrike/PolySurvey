PolySurvey::Application.routes.draw do

  resources :sessions, only: [:new, :create, :destroy]

  match '/admin_signin',  to: 'sessions#new'
  match '/signout', to: 'sessions#destroy', :via => :delete
  match '/9290582968088875', to: 'admin#show'

  root :to => 'survey#p001'

  #get "survey/p001"

  get "survey/p002"
  post "survey/p002"

  get "survey/p003"
  post "survey/p003"

  get "survey/p004"
  post "survey/p004"

  get "survey/p005"
  post "survey/p005"

  get "survey/p006"
  post "survey/p006"

  get "survey/p007"
  post "survey/p007"

  get "survey/p008"
  post "survey/p008"

  get "survey/p009"
  post "survey/p009"

  get "survey/p010"
  post "survey/p010"

  get "survey/p011"
  post "survey/p011"

  get "survey/p012"
  post "survey/p012"

  get "survey/p013"
  post "survey/p013"

  post "admin/output_results"

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
  # match ':controller(/:action(/:id))(.:format)'
end
