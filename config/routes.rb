Rails.application.routes.draw do
  resources :records
  get 'greetings/hello'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'records#even'
end
