require 'spec_helper'

RSpec.describe Book do
  let(:book) {Book.new({author_first_name: "Harper", author_last_name: "Lee", title: "To Kill a Mockingbird", publication_date: "July 11, 1960"})}

  describe '#initialize' do
    it 'can intiailze' do
      expect(book).to be_instance_of(Book)
      expect(book.title).to eq('To Kill a Mockingbird')
      expect(book.author).to eq('Harper Lee')
      expect(book.publication_yea).to eq('1960')
    end
  end

end