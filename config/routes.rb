Rails.application.routes.draw do
  mount ForestLiana::Engine => '/forest'
  root to: 'pages#home'
  get '/posts/:id', to: 'pages#show', :as => :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :forest do
    post '/actions/moderate-comment' => 'comments#moderate_comment'
  end
end
