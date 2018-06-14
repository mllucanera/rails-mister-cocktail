Rails.application.routes.draw do

  get 'doses/new'
  get 'doses/create'
  resources :cocktails, only: [ :new, :create, :show, :index ]

end
