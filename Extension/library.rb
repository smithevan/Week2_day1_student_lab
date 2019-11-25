class Book

  def initialize(title)
    @title = title
  end

end

  class Library
    def initialize
      @books = []
    end

    # def get_book
    #   return @books
    # end
    def get_book(search_name)
      for book in @books
        return search_name if book == search_name
      end
    end

    def add_book(book)
      @books.push(book)
    end
  end
