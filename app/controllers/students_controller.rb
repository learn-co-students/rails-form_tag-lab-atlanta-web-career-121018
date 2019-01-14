class StudentsController < ApplicationController

    def index
        @students = Student.all
    end

    def show
        @student = Student.find(params[:id])
    end

    def new
    end

    def create
        # Never do below....long way of doing it.
        @student = Student.new({first_name: params[:first_name], last_name: params[:last_name]})
        @student.save
        redirect_to @student
    end

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
