RSpec.describe Array do 
  describe 'monkeypatched << operator' do
    it 'successfully saves an element' do 
      expect((subject << 1).size).to eq(1)
    end
  end
end
