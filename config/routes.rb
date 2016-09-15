Rails.application.routes.draw do
  
  devise_for :useres
  resources :catalogo_ropas
  resources :detalles
  resources :ventas
  resources :balances
  resources :tipos_documentos
  resources :cargos
  resources :tipos_pagos
  resources :productos
  resources :proveedores
  resources :ciudades
  resources :departamentos
  resources :usuarios
  
  resources :estados_civiles
  
  resources :empleados do
 	  get :autocomplete_ciudad_nombre, :on => :collection
  end

  resources :clientes do
 	  get :autocomplete_ciudad_nombre, :on => :collection
  end

  
  
  get 'home','Home', to:'static_pages#home'
  
  #get 'ayuda', to:'static_pages#help'
  
  #get 'acerca', to:'static_pages#about'
  
  #get 'ropa', to:'static_pages#ropa'
  
  #get 'accesorios', to:'static_pages#accesorios'
  
  
  get 'static_pages/home'
  get 'static_pages/help'
  get 'static_pages/about'
  get 'static_pages/ropa'
  get 'static_pages/accesorios'

  root :to => 'static_pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
