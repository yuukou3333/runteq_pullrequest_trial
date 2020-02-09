Rails.application.routes.draw do
  root 'static_pages#top'

  get 'login', to: 'user_sessions#new'
  post 'login', to: 'user_sessions#create'
  delete 'logout', to: 'user_sessions#destroy'

  resources :users, only: %i[new create]
  resources :tasks do
    collection do
      get :done
      get :all
    end
    resource :done, only: %i[create destroy], controller: 'tasks/dones'
  end
end
