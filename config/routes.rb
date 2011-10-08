Depot::Application.routes.draw do
  get 'admin' => 'admin#index'
  controller :sessions do
    get  'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy
  end
  scope '(:locale)' do
    resources :users
    resources :orders
    resources :line_items
    resources :carts
    resources :products do #, :shallow => true do
      #resources :reviews
      get :who_bought, :on => :member
    end
    root :to => 'store#index', :as => 'store'
  end
  
  match 'miss/:action' => 'missmeth'
end
