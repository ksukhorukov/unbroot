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

require 'pry'

RSpec.describe ::ArrayPrintParams do 
  # let(:_params) {  { element: 1, test_mode: true } }
  # let(:array_print_params) { subject.new(_params) }

  it 'class can be instantiated and params can be later accessed with appropriate readers' do 
    array_print_params = ::ArrayPrintParams.new({ element: 1, test_mode: true })

    # expect(array_print_params.element).to eq(1)
    # expect(array_print_params.test_mode).to eq(true)
  end
end 