require_relative '../spec_helper.rb'

RSpec.describe Array do 
  describe 'monkeypatched << operator' do
    it 'successfully saves an element' do 
      expect((subject.new.push({ element: 1, test_mode: true })).first).to eq(1)
    end

    let(:test_array) { subject.new }
    it 'successfully prints an element before saving' do 
      expect { test_array.push({ element: 1, test_mode: true }) }.to output("\e[1;32;49m1\e[0m\n").to_stdout
      expect(test_array.new.first).to eq(1)
    end
  end
end



