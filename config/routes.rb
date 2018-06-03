Rails.application.routes.draw do
  root to: 'tasks#index'
  resources :tasks
  get 'tasks/:id/switch_done_status', to: 'tasks#switch_done_status', as: 'switch_done'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
