require_relative '../spec_helper.rb'

RSpec.describe Array do 
  describe 'monkeypatched << operator' do

    let(:params) { Hash.new(element: 1, test_mode: true) }
    it 'successfully saves an element' do 
      subject.new.push(params).first
      expect(Array.new.push(params).first).to eq(1)
    end

    let(:test_array) { subject.new }
    it 'successfully prints an element before saving' do 
      expect { test_array.push({ element: 1, test_mode: true }) }.to output("\e[1;32;49m1\e[0m\n").to_stdout
      expect(test_array.new.first).to eq(1)
    end
  end
end



