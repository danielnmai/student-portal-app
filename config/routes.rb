Rails.application.routes.draw do
  namespace :api do 
    namespace :v1 do
      get "/" => "students#index"
    end
  end

  get '/students/:id' => 'students#show'
  get '/students/:id/edit' => 'students#edit'
  patch '/students/:id' => 'student#update'

  # get '/login' => 'sessions#new'
  # post '/login' => 'sessions#create'
  # get '/logout' => 'sessions#destroy'
end
