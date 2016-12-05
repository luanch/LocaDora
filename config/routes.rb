Rails.application.routes.draw do
  resources :clientes
  resources :funcionarios
  resources :pessoas
  resources :atores
  resources :filmes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root :to => 'filmes#index'
end
