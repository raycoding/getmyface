Getmyface::Application.routes.draw do
  resources :users do
    collection do
      get 'create_user',:to=>'users#create_user', :as=>'create_user'
    end 
  end
  root :to => "users#index"
end
