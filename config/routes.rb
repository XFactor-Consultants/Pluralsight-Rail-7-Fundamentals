Rails.application.routes.draw do
  root 'welcome#index'

  resources :wiki_posts, path: 'wiki_posts'

  namespace :welcome do
    get 'about', to: 'about', as: 'about'
  end

  get '/about', to: redirect('/welcome/about')

end