Rails.application.routes.draw do
  get 'sessoes/new'

  resources :clientes
  resources :funcionarios
  resources :pessoas
  resources :atores
  resources :filmes
  resources :funcionarios
  get    'login'   => 'sessoes#new'
  post   'login'   => 'sessoes#create'
  delete 'logout'  => 'sessoes#destroy'
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => 'filmes#index'
end
