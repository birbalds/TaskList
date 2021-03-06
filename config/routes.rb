Rails.application.routes.draw do
    get 'tasks', to: 'tasks#index'

    get 'tasks/new', to: 'tasks#new', as: 'new_task'
    post 'tasks', to: 'tasks#create'

    get 'tasks/:id/edit', to: 'tasks#edit', as: 'edit_task'
    patch 'tasks/:id', to: 'tasks#update'

    get 'tasks/:id', to: 'tasks#show', as: 'task'

    patch 'tasks/:id/complete', to: 'tasks#complete', as: 'complete_task'
    patch 'tasks/:id/incomplete', to: 'tasks#incomplete', as: 'incomplete_task'

    delete 'tasks/:id', to: 'tasks#destroy'
end
