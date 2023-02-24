class Library
  attr_reader :name,
              :books,
              :authors

  def initialize(name)
    @name = name
    @books = []
    @authors = []
  end

  def add_author(author)
    @authors << author
    author.books.each {|book| @books << book}
  end

  def publication_time_frame_for(author)
    books_by_year = author.books.sort_by {|book| book.publication_year}
    start_end = {start: books_by_year.first.publication_year, end: books_by_year.last.publication_year}
  end
end
