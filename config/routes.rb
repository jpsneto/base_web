BaseWeb::Application.routes.draw do
  resources :transportadoras
  resources :funcionarios
  resources :clientes
  resources :produtos do
    collection do
      get :new_multiple
      post :create_multiple
    end
  end
  resources :fornecedors
  devise_for :users
  resources :users
  resources :roles do
    collection do
      get :edit_multiple
      put :update_multiple
    end
  end

  resources :orders

  resources :projects


  get 'dashboard', to: 'dashboard#index'

  root to: 'dashboard#index'
end
