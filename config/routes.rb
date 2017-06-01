Rails.application.routes.draw do
  get 'main/index'

  resources :phones, controller: 'phones'
  resources :tablets, controller: 'tablets'
  resources :transformers, controller: 'transformers'
  resources :watches, controller: 'watches'

  root 'main#index'

  resources :phones

  root 'phones#index'

  resources :tablets

  root 'tablets#index'

  resources :watches

  root 'watches#index'

  resources :transformers

  root 'transformers#index'

  resources :developers do
    resources :phones, controller: 'phones'
    resources :tablets, controller: 'tablets'
    resources :transformers, controller: 'transformers'
    resources :watches, controller: 'watches'
  end

  root 'developers#index'
end
