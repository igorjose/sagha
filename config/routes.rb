Sagha::Application.routes.draw do
  resources :outras_informacoes

  resources :orcamentos_ti

  resources :videomonitoramentos

  resources :informacao_sites

  resources :projetos_ti

  resources :informacoes_ged

  resources :servidores

  resources :orgao_sistemas_proprios

  resources :orgao_sistemas

  resources :sistemas

  resources :orgao_equipamentos

  resources :equipamentos

  resources :orgao_impressoras
  resources :cargos

  resources :informacoes_pessoais

  resources :orgao_softwares

  resources :desktops

  resources :softwares
  resources :orgaos

  devise_for :users

  root :to => "home#index"

  get 'inicial', to: 'home#index', as: :index

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

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
