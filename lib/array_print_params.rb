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

class ArrayPrintParams
  attr_reader :params, :element, :test_mode

  def initialize(params_h)
    @params = params_h

    fetch_paramaters_values
  end 

  def fetch_values(k1, k2)
    fetch_paramaters_values
  end 

  private

  def fetch_paramaters_values
    @e, @test_mode = values.first, values.second
  end 

  def values
    params.fetch_values(:element, :test_mode)
  end
end 