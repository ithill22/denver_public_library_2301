class Book
  attr_reader :title,
              :author_first_name,
              :author_last_name,
              :publication_date,
              :author

  def initialize(book_details)
    @title = book_details[:title]
    @author_first_name = book_details[:author_first_name]
    @author_last_name = book_details[:author_last_name]
    @publication_date = book_details[:publication_date]
    @author = author_first_name + (' ') + author_last_name   
  end

  def publication_year
    date = publication_date.split(' ')
    date[2]
  end
end
