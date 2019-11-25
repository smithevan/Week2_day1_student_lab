class Book
  def initialize(title)
    @title = title
  end
end
class Library
  def initialize
    @books = []
  end
  def add_book(book)
    @books.push(book)
  end
end
# In our tests
book = Book.new("War and Peace")
library = Library.new()
library.add_book(book)
