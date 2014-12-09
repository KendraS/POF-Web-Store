Rails.application.routes.draw do

  root to: 'welcome#index'

  # Maps HTTP verbs to controller actions automatically
  resources :products, only: [:index, :show]
  resources :categories
  
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  # WELCOME PAGE
  get 'about' => 'abouts#index'
  get 'ingredients' => 'ingredients#index'
  get 'contact' => 'contacts#index'
  get 'add_to_cart' => 'products#index'

  # CATEGORIES
  get 'dry_food' => 'welcome#dry_food'
  get 'wet_food' => 'welcome#wet_food'
  get 'biscuits_and_treats' => 'welcome#biscuits_and_treats'
  get 'accessories' => 'welcome#accessories'

  # SEARCH RESULTS
  get 'search_results' => 'welcome#search_results', as: 'search_results'

end
