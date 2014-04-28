Labsis::Application.routes.draw do
  get "principal_vigilancia/index"
  get "principal_patologia/index"
  resources :datos_insumos_reactivos

  resources :hospitals

  resources :datos_insumos

  resources :registro_insumos_reactivos

  resources :insumos_reactivos

  resources :lab_cancer_uterinos

  resources :malaria

  resources :chagas

  resources :lab_tuberculoses

  resources :lab_anat_pats

  resources :lab_anat_cits

  resources :datos_usuarios

  resources :usuarios

  resources :rols

  resources :pacientes



  get "principal/index"

  # The priority is based upon order of creation: first created -> highest priority.
  #See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'principal#index'

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
