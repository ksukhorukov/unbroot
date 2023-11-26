require_relative '../spec_helper.rb'

RSpec.describe Array do 
  describe 'monkeypatched << operator' do
    it 'successfully saves an element' do 
      expect((subject.push 1).first).to eq(1)
    end

    it 'successfully prints an element before saving' do 
      expect { subject.push(1) }.to output("\e[1;32;49m1\e[0m\n").to_stdout
      expect(subject.first).to eq(1)
    end
  end
end
