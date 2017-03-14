Rails.application.routes.draw do
  resources :items
  devise_for :users, controllers: {
           :sessions => "users/sessions",
           :registrations => "users/registrations" }
  authenticated :user do
  	root :to => 'items#index'
  end
  devise_scope :user do
  	get '/', to: 'devise/sessions#new'
  end
  
  root  "users/sessions#new"  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
