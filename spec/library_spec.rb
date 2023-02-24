require 'spec_helper'

RSpec.describe Library do
  let(:library) {Library.new('Denver Public Library', )}

  describe '#initialize' do
    it 'can initialize' do
      expect(library).to be_instance_of(Library)
      expect(library.name).to eq('Denver Public Library')
      expect(library.books).to eq([])
      expect(library.authors).to eq([])
    end
  end
end