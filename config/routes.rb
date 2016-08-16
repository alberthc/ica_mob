Rails.application.routes.draw do
  # navbar controller
  match '/about', to: 'navbar#about', via: 'get'
  match '/leadership', to: 'navbar#leadership', via: 'get'
  match '/equip', to: 'navbar#equip', via: 'get'
  match '/establish', to: 'navbar#establish', via: 'get'
  match '/evangelize', to: 'navbar#evangelize', via: 'get'
  match '/discipleship', to: 'navbar#discipleship', via: 'get'
  match '/contact', to: 'navbar#contact', via: 'get'
  match '/special-events', to: 'navbar#special_events', via: 'get'
  match '/stp', to: 'navbar#stp', via: 'get'
  match '/whec', to: 'navbar#whec', via: 'get'

  # campus controller

  match '/campus/:campus_url_key',  to: 'campus#home',  via: 'get'
  match '/campus/:campus_url_key/leaders',  to: 'campus#leaders',  via: 'get'
  match '/campus/:campus_url_key/small-groups',  to: 'campus#small_groups',  via: 'get'

  match '/usc',  to: redirect('/campus/usc'),    via: 'get'
  match '/usc/leaders',  to: redirect('/campus/usc/leaders'),    via: 'get'
  match '/usc/small-groups',  to: redirect('/campus/usc/small-groups'),    via: 'get'

  match '/ucla',  to: redirect('/campus/ucla'),    via: 'get'
  match '/ucla/leaders',  to: redirect('/campus/ucla/leaders'),    via: 'get'
  match '/ucla/small-groups',  to: redirect('/campus/ucla/small-groups'),    via: 'get'

  match '/uci',  to: redirect('/campus/uci'),    via: 'get'
  match '/uci/leaders',  to: redirect('/campus/uci/leaders'),    via: 'get'
  match '/uci/small-groups',  to: redirect('/campus/uci/small-groups'),    via: 'get'

  #match '/ucb',  to: 'campus#cal',    via: 'get'
  #match '/ucb',  to: redirect('http://www.lhecberkeley.org/in-christ-alone-collegiate-fellowship.html'),    via: 'get'
  #match '/cal',  to: redirect('http://www.lhecberkeley.org/in-christ-alone-collegiate-fellowship.html'),    via: 'get'

  match '/cal',  to: redirect('/campus/cal'),    via: 'get'
  match '/cal/leaders',  to: redirect('/campus/cal/leaders'),    via: 'get'
  match '/cal/small-groups',  to: redirect('/campus/cal/small-groups'),    via: 'get'
  match '/ucb',  to: redirect('/campus/cal'),    via: 'get'
  match '/ucb/leaders',  to: redirect('/campus/cal/leaders'),    via: 'get'
  match '/ucb/small-groups',  to: redirect('/campus/cal/small-groups'),    via: 'get'

  match '/rutgers',  to: redirect('/campus/rutgers'),    via: 'get'
  match '/rutgers/leaders',  to: redirect('/campus/rutgers/leaders'),    via: 'get'
  match '/rutgers/small-groups',  to: redirect('/campus/rutgers/small-groups'),    via: 'get'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'
  root 'navbar#home'

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
