UsEnergy::Application.routes.draw do

  get '/' => 'studies#index'
  get '/studies' => 'studies#index'
  root to: 'studies#index'

end
