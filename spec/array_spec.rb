require_relative '../spec_helper.rb'

require 'pp'

RSpec.describe Array do 
  describe 'monkeypatched push method' do

    let(:params) { Hash.new(element: 1, test_mode: true) }
    let(:array) { Array.new }

    it 'successfully saves an element' do 
      _first = array.push(params).first
      expect(_first).to eq(1)
    end

    it 'successfully prints an element before saving' do 
      expect { array.push(params) }.to output("\e[1;32;49m1\e[0m\n").to_stdout
      expect(array.first).to eq(1)
    end
  end
end



