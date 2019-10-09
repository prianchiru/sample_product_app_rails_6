class BookController < ApplicationController
    def create
        puts "Book params: #{book_params}"
        @book = Book.new(book_params)
        if @book.save
            redirect_to :action => 'list'
            puts "testing"
        else
            puts "book not created"
        end
    end
    def book_params
        params.require(:books).permit(:title, :subject_id)
    end
    def new
        @book = Book.new
    end
    def list
        @books = Book.paginate(:page => params[:page], :per_page => 1)
    end
    def show
        @book = Book.find(params[:id])
    end
    def delete
        @book = Book.find(params[:id])
        @result = @book.destroy
        puts "Result:"
        puts @result.inspect
        redirect_to :action => 'list'
    end
end
