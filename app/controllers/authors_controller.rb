class AuthorsController < ApplicationController
    def index
        @authors = Author.all
    end
    
    def show
        @author = Author.find(params[:id])
    end
    
    def new
    end

    def create
        @author = Author.new(params.require(:author).permit(:title, :text))
        @author.save
        redirect_to @author
    end
    private
    def author_params
        params.require(:author).permit(:title, :text)
    end

end