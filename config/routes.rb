Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/teams", to: 'teams#index'
  get "/teams", to: 'teams#new'
  post"/teams", to: 'teams#create'
  get "/teams/:id", to:'teams#show'
  get "/teams/edit/:id", to: 'teams#edit'
  patch "/teams/:id", to:'teams#update'
  delete "/teams/:id", to:'teams#destroy'
end
