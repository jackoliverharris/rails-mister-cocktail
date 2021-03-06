Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :cocktails, only: %i[index show new create] do
    resources :doses, only: %i[new create]
  end
  delete '/doses/:id', to: 'doses#destroy', as: 'dose'
  root 'cocktails#index'
  # mount Attachinary::Engine => '/attachinary'
end
