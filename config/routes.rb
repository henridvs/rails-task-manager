Rails.application.routes.draw do
 # list all tasks
get '/tasks', to: 'tasks#index'

delete 'tasks/:id', to: "tasks#destroy"

get 'tasks/new', to: "tasks#new"
post '/tasks',    to: "tasks#create"

get 'tasks/:id/edit', to: "tasks#edit", as: :edit
patch 'tasks/:id',    to: "tasks#update"




# show a task
get 'tasks/:id', to: "tasks#show", as: :task
end
