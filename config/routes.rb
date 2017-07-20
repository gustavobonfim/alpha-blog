Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

root 'pages#home'
get 'about', to: 'pages#about'

resources :articles
# root 'articles#index'

get 'signup', to: 'users#new'
resources :users, except:[:new]


# post 'users', to: 'users#create'
# get 'users/:id/edit', to: 'users#edit'
# patch 'users/:id', to: 'users#update'
# put 'users/:id', to: 'users#update'

# patch 'users/:id', controller: 'users', action: :update
# put 'users/:id', controller: 'users', action: :update


end
