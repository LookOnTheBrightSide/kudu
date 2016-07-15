Rails.application.routes.draw do
  devise_for :users
	resources :cards
	root 'pages#home'
  get 'pages/home'

  get 'pages/faq'

  get 'pages/about'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
