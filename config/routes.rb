Rails.application.routes.draw do
  get 'session/new'

  get 'task/new'

  get 'teammembers/new'

  get 'projects/new'

  get 'projectmanagers/new'

  root :to => 'pages#welcome'

  resources :projectmanagers, :only =>[:new, :create, :home]
  get '/projectmanagers/new'  =>  'projectmanagers#new'
  get '/projectmanagers/home'  =>  'projectmanagers#home'


  resources :projects, :only =>[:new, :create]
  get '/projects/new'  =>  'projects#new'
  get '/projects/Index'  =>  'projects#index'
  get '/projects/show/:id'  =>  'projects#show'

  resources :teammembers, :only =>[:new, :create, :signup, :update]
  get '/teammembers/new'  =>  'teammembers#new'
  get '/teammembers/signup/:id' => 'teammembers#signup'

  resources :tasks, :only =>[:new, :create]
  get '/tasks/new'  =>  'tasks#new'

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/logout' => 'session#destroy'





end
