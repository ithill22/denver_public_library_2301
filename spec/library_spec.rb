require 'spec_helper'

RSpec.describe Library do
  let(:library) {Library.new('Denver Public Library', )}
  let(:charlotte_bronte) {Author.new({first_name: "Charlotte", last_name: "Bronte"})}

  describe '#initialize' do
    it 'can initialize' do
      expect(library).to be_instance_of(Library)
      expect(library.name).to eq('Denver Public Library')
      expect(library.books).to eq([])
      expect(library.authors).to eq([])
    end
  end

  describe '#add_author' do
    it 'can add authors to authors array, and books they written to the books array' do
      jane_eyre = charlotte_bronte.write("Jane Eyre", "October 16, 1847")
      villette = charlotte_bronte.write("Villette", "1853")
      library.add_author(charlotte_bronte)

      expect(library.authors).to eq([charlotte_bronte])
      expect(library.books).to eq([jane_eyre, villette])
    end
  end
end