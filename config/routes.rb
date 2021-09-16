Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/museums', to: 'museums#get_museums'
  resources :museums, only: [:index]
end
