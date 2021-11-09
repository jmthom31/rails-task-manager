Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # READ - all
  get '/tasks', to: 'tasks#index'

  # CREATE (new + create)
  get '/tasks/new', to: 'tasks#new', as: :new_task
  post '/tasks', to: 'tasks#create'

  # READ - one
  get '/tasks/:id', to: 'tasks#show', as: :task

  # UPDATE (edit + update)
  get '/tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  patch '/tasks/:id', to: 'tasks#update'

  # DELETE
  delete '/tasks/:id', to: 'tasks#destroy'
end
