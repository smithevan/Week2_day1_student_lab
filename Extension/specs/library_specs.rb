require('minitest/autorun')
require('minitest/reporters')
require_relative('../library.rb')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new


class TestLibrary < MiniTest::Test

  def setup
    book = Book.new({title: "Lord of the Rings",
      rental_details: {
      student_name: "Jeff", date: "01/12/16"
    }
      })

  end

  # def test_get_book()
  #   book = {title: "Lord of the Rings",
  #     rental_details: {
  #     student_name: "Jeff", date: "01/12/16"
  #   }
  #   assert_equal(library.get_book(book), library.get_name(book))
  # end

  def test_add_book
    book = Book.new(title: "War and Peace",
    rental_details: {
      student_name: "George", date: "03/09/18"
      })
      library = Library.new()
    assert_equal(library.get_book(book), library.add_book(book))
  end



end
