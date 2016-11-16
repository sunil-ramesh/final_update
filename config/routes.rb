Rails.application.routes.draw do
 

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'
  # resources :users do
  #   resources :actions do
  #     resources :participants
  
  # end
#              new_user_action GET    /users/:user_id/actions/new(.:format)                              actions#new
    
                    root "static_pages#home"
                    get  "/users/new" => "users#new",as: :user_new 
                    post "/users/new"=> "users#create"
                    get "/users"=> "users#index",as: :new_list
                    get "/users/:id/edit" => "users#edit",as: :edit_new


#                                                                                        
                    get "/login"=> "sessions#new",as: :new_login
  
                    post "/login"=> "sessions#create"
                    delete "/logout"=>"sessions#destroy",as: :new_logout


                    get "/actions/new"=>"actions#new",as: :action_new
                    post "/actions"=>"actions#create",as: :action_create
                    get "/actions"=>"actions#index",as: :action_index
                     get "/actions/:id"=>"actions#show",as: :action_show
                     get  "/actions/:id/edit"=>"actions#edit", as: :action_edit 
                     put "/actions/:id/edit"=>"actions#update", as: :action_update     
                    

                
#                 user_actions GET    /users/:user_id/actions(.:format)                                  actions#index

#   user_action_participants GET    /users/:user_id/actions/:action_id/participants(.:format)          participants#index
#                              POST   /users/:user_id/actions/:action_id/participants(.:format)          participants#create
#  new_user_action_participant GET    /users/:user_id/actions/:action_id/participants/new(.:format)      participants#new
# edit_user_action_participant GET    /users/:user_id/actions/:action_id/participants/:id/edit(.:format) participants#edit
#      user_action_participant GET    /users/:user_id/actions/:action_id/participants/:id(.:format)      participants#show
#                              PATCH  /users/:user_id/actions/:action_id/participants/:id(.:format)      participants#update
#                              PUT    /users/:user_id/actions/:action_id/participants/:id(.:format)      participants#update
#                              DELETE /users/:user_id/actions/:action_id/participants/:id(.:format)      participants#destroy
#                 user_actions GET    /users/:user_id/actions(.:format)                                  actions#index
#                              POST   /users/:user_id/actions(.:format)                                  actions#create
#              new_user_action GET    /users/:user_id/actions/new(.:format)                              actions#new
#             edit_user_action GET    /users/:user_id/actions/:id/edit(.:format)                         actions#edit
#                  user_action GET    /users/:user_id/actions/:id(.:format)                              actions#show
#                              PATCH  /users/:user_id/actions/:id(.:format)                              actions#update
#                              PUT    /users/:user_id/actions/:id(.:format)                              actions#update
#                              DELETE /users/:user_id/actions/:id(.:format)                              actions#destroy
#                        users GET    /users(.:format)                                                   users#index
#                              POST   /users(.:format)                                                   users#create
#                     new_user GET    /users/new(.:format)                                               users#new
#                    edit_user GET    /users/:id/edit(.:format)                                          users#edit
#                         user GET    /users/:id(.:format)                                               users#show
#                              PATCH  /users/:id(.:format)                                               users#update
#                              PUT    /users/:id(.:format)                                               users#update
#                              DELETE /users/:id(.:format)                                               users#destroy


   # get "action/index"=> "actions#index",as: :new_index
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
