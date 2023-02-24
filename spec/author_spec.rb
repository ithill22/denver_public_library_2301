require 'spec_helper'

RSpec.describe Author do
  let(:charlotte_bronte) {Author.new({first_name: "Charlotte", last_name: "Bronte"})}

  describe '#initialize' do
    it 'can initialize' do
      expect(charlotte_bronte).to be_instance_of(Author)
      expect(charlotte_bronte.name).to eq('Charlotte Bronte')
      expect(charlotte_bronte.books).to eq([])
    end
  end

  describe '#write' do
    it can 'create a book in authors name' do
      charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
      jane_eyre = charlotte_bronte.write("Jane Eyre", "October 16, 1847")

      expect(jane_eyre.class).to eq(Book)
      expect(jane_eyre.title).to eq('Jane Eyre')
      expect(charlotte_bronte.books).to eq([jane_eyre])
    end
  end
end