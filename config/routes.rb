Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'tasks#index'

  # LIST ALL
  get 'tasks', to: 'tasks#index' # list tasks

  # CREATE (2 routes)
  get 'tasks/new', to: 'tasks#new', as: :new_task # get form to create new task
  post 'tasks', to: 'tasks#create' # post form to create task on submit

  # SHOW ONE
  get 'tasks/:id', to: 'tasks#show', as: :task # show one task

  # EDIT (2 routes)
  get 'tasks/:id/edit', to: 'tasks#edit' # get form with task id
  patch 'tasks/:id', to: 'tasks#update' # update form with task id

  # DELETE ONE
  delete 'tasks/:id', to: 'tasks#destroy' # delete task with id
end
