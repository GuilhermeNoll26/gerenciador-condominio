Rails.application.routes.draw do
  resources :usuarios
  resources :apartamentos
  devise_for :users, controllers: { sessions: 'users/sessions' }
  resources :pessoas
  root to: 'stack#index'

  get ':page' => 'stack#show', as: 'stack'
  
end
