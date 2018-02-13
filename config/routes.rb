Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # root
  root to: 'tasks#index'
  # create
    # new
  get 'tasks/new', to: 'tasks#new', as: :new
    # create
  post 'tasks', to: 'tasks#create', as: :create
  # read
    # read all (index)
  get 'tasks', to: 'tasks#index', as: :tasks
    # read one (show)
  get 'tasks/:id', to: 'tasks#show', as: :task
  # update
    # edit
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit
    #update
  patch 'tasks/:id', to: 'tasks#update', as: :update

  # delete
  #   destroy
  delete 'tasks/:id', to: 'tasks#destroy', as: :destroy
end
