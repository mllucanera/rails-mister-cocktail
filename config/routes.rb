Rails.application.routes.draw do

  resources :cocktails, only: [ :new, :create, :show, :index ] do
    resources :doses, only: [:new, :create]
  end
    delete "/doses/:id", to: "doses#destroy", as: "dose"
end
