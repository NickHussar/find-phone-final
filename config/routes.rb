Rails.application.routes.draw do
  get 'main/index'

  resources :phones, controller: 'phones'
  resources :tablets, controller: 'tablets'
  resources :transformers, controller: 'transformers'
  resources :watches, controller: 'watches'

  root 'main#index'

  resources :phones do
    resources :developers, controller: 'developers'
  end

  root 'phones#index'

  resources :tablets do
    resources :developers, controller: 'developers'
  end

  root 'tablets#index'

  resources :watches do
    resources :developers, controller: 'developers'
  end

  root 'watches#index'

  resources :transformers do
    resources :developers, controller: 'developers'
  end

  root 'transformers#index'

  resources :developers do
    resources :phones, controller: 'phones'
    resources :tablets, controller: 'tablets'
    resources :transformers, controller: 'transformers'
    resources :watches, controller: 'watches'
  end

  root 'developers#index'
end
