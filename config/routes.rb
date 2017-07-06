Rails.application.routes.draw do
  namespace :api do 
    namespace :v1 do
      get "/" => "students#index"
      get '/:id' => 'students#show'
    end
  end

  get '/students/:id' => 'students#show'
  get '/students/:id/edit' => 'students#edit'
  patch '/students/:id' => 'students#update'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
end
