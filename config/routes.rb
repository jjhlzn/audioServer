Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'
  get 'albums' => 'album#index'
  post 'albums' => 'album#index'
  get 'album/songs' => 'album#getSongs'
  post 'album/songs' => 'album#getSongs'
  get 'album/search' => 'album#search'
  post 'album/search' => 'album#search'
  post 'album/getHotSearchWords' => 'album#getHotSearchWords'
  get 'album/getHotSearchWords' => 'album#getHotSearchWords'
  
  get 'song/comments' => 'song#getComments'
  post 'song/comments' => 'song#getComments'
  get 'song/livecomments' => 'song#getLiveComments'
  post 'song/livecomments' => 'song#getLiveComments'
  get 'song/livelistener' => 'song#getLiveListenerCount'
  post 'song/livelistener' => 'song#getLiveListenerCount'
  
  get 'comment/add' => 'comment#create'
  post 'comment/add' => 'comment#create'
  
  get 'comment/addLive' => 'comment#addLive'
  post 'comment/addLive' => 'comment#addLive'
  
  get 'user/login' => 'user#login'
  post 'user/login' => 'user#login'
  get 'user/updatetoken' => 'user#updateToken'
  post 'user/updatetoken' => 'user#updateToken'
  get 'user/logout' => 'user#logout'
  post 'user/logout' => 'user#logout'
  get 'user/getPhoneCheckCode' => 'user#getPhoneCheckCode'
  post 'user/getPhoneCheckCode' => 'user#getPhoneCheckCode'
  get 'user/signup' => 'user#signup'
  post 'user/signup' => 'user#signup'
  get 'user/getPassword' => 'user#getPassword'
  post 'user/getPassword' => 'user#getPassword'
  get 'user/resetPassword' => 'user#resetPassword'
  post 'user/resetPassword' => 'user#resetPassword'
  get 'user/getClientNumber' => 'user#getClientNumber'
  post 'user/getClientNumber' => 'user#getClientNumber'
  get 'user/setName' => 'user#setName'
  post 'user/setName' => 'user#setName'
  get 'user/setnickname' => 'user#setNickName'
  post 'user/setnickname' => 'user#setNickName'
  get 'user/setSex' => 'user#setSex'
  post 'user/setSex' => 'user#setSex'
  get 'user/uploadprofileimage' => 'user#uploadProfileImage'
  post 'user/uploadprofileimage' => 'user#uploadProfileImage'
  get 'user/getprofileimage' => 'user#getProfileImage'
  post 'user/getprofileimage' => 'user#getProfileImage'
  get 'user/getstatdata' => 'user#getStatData'
  post 'user/getstatdata' => 'user#getStatData'
  
  
  get 'app/checkUpgrade' => 'app#checkUpgrade'
  post 'app/checkUpgrade' => 'app#checkUpgrade'
  get 'app/registerDevice' => 'app#registerDevice'
  post 'app/registerDevice' => 'app#registerDevice'
  get 'app/getAds' => 'app#getAds'
  post 'app/getAds' => 'app#getAds'
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
