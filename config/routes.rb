Rails.application.routes.draw do
  get 'projectmanagers/new'

    resources :projectmanagers, :only =>[:new, :create]
    get '/projectmanagers/new'  =>  'projectmanagers#new'
end
