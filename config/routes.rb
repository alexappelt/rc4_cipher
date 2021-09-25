Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


  root to: 'index#index'

  post '/encrypt', to: 'index#encrypt'
  post '/decrypt', to: 'index#decrypt'
  get '/encrypt', to: 'index#encrypt'


end
