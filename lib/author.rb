class Author
  attr_reader :name,
              :books,
              :first_name,
              :last_name

  def initialize(author_name)
    first_name = author_name[:first_name]
    last_name = author_name[:last_name]
    @name = first_name + (' ') + last_name
    @books = []
  end

  def write(title, publication_date)
    book = Book.new(author_first_name: @first_name, author_last_name: @last_name, title: title, publication_date: publication_date)
    @books << book
    book
  end
end
