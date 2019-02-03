Rails.application.routes.draw do
  root 'static_pages#home'
  get '/generate', to: 'gengou#new'
  get '/about', to: 'static_pages#about'
  get '/auth/:provider/callback', to: 'sessions#create'
  get '/signout', to: 'sessions#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
