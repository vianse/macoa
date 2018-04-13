Rails.application.routes.draw do
  resources :salas
  resources :tipo_venta
  resources :step_threes
  resources :step_fours
  resources :step_fives
  resources :step_nines
  resources :step_eights
  resources :step_sevens
  resources :step_sixes
  resources :step_twos
  resources :delivery_flows
  resources :flows
  root "delivery_flows#index"
  constraints subdomain: /^(?!www)(\w+)/ do
    resources :projects
    namespace :api do
      namespace :v1 do
        resources :flow, path: "flow"
        resources :first_block, path: "first_block"
        resources :add_block, path: "add_block"
      end
    end
  end
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
