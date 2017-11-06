class BooksController < ApplicationController
  before_action :capture_ip, :only => :index
  def index
  	books_scope = Book.all_books
    if params[:filter]
      books_scope = books_scope.by_filter(params[:filter])
    end
    @books = smart_listing_create(:books, books_scope, partial: 'books/list')
  end

  private
  def capture_ip
  	Visitor.create(ip: remote_ip)
  	# VisitorLocationService.record_visitor_ip
  end
  def remote_ip
  	request.remote_ip
  end
end
