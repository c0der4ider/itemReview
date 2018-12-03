Rails.application.routes.draw do
  devise_for :users,
    controllers: {
      sessions: 'users/sessions',
      registrations: 'users/registrations',
      confirmations: 'users/confirmations'
    },
    path_names: {
      sign_up: "register"
    }

  resources :profiles do
    get :dashboard, on: :collection
  end
  resources :entities
  resources :items
  resources :brands
  resources :categories

end
