Rails.application.routes.draw do
  resources :wiki_posts
  get 'welcome/index'
  get 'welcome/about'
  get '/about', to: redirect('/welcome/about')
  root 'welcome#index'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
