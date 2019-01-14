Rails.application.routes.draw do
  resources :students, only: :index
  get '/student/:id', to: 'students#show', as: 'student'
  post 'students', to: 'students#create', as: 'create_student'
  get 'students/new', to: 'students#new', as: 'new_student'
end
# Prefix Verb        URI Pattern                              Controller#Action

# welcome_index      GET    /welcome/index(.:format)          welcome#index
# articles           GET    /articles(.:format)               articles#index
#                    POST   /articles(.:format)               articles#create
# new_article        GET    /articles/new(.:format)           articles#new
# edit_article       GET    /articles/:id/edit(.:format)      articles#edit
# article            GET    /articles/:id(.:format)           articles#show
#                    PATCH  /articles/:id(.:format)           articles#update
#                    PUT    /articles/:id(.:format)           articles#update
#                    DELETE /articles/:id(.:format)           articles#destroy
