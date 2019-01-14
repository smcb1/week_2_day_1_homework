class Library

attr_accessor :books

	def initialize(books)
		@books = books
	end

	def find_book(book)
		return @books = books.include?(book)
	end

end