Rails.application.routes.draw do
  root 'items#index'
  resources :items
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	
  resources :users, only: [:show]
  get "/statics/:static" => "statics#show"
end
