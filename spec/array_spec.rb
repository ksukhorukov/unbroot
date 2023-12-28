# Copyright 2023 KIRILL SUKHORUKOV

# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.

# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.

# You should have received a copy of the GNU General Public License V. 3.0
# along with this program.  If not, see <https://www.gnu.org/licenses/gpl-3.0.txt>

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



