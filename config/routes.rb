Rails.application.routes.draw do
  get 'main/index'

  resources :phones, :tablets, :transformers, :watches
  
  root 'main#index'

  resources :phones

  root 'phones#index'

  resources :tablets

  root 'tablets#index'

  resources :watches

  root 'watches#index'

  resources :transformers

  root 'transformers#index'

  resources :developers

  root 'developers#index'
end
