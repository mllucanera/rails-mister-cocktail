Rails.application.routes.draw do

  root to: "cocktails#index"

  resources :cocktails, only: [ :new, :create, :show ] do
    resources :doses, only: [:new, :create]
  end
    delete "/doses/:id", to: "doses#destroy", as: "dose"
end
