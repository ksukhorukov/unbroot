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

#!/usr/bin/env ruby

require 'pp'
require 'colorized_string'
require 'pry'

class Array
  attr_reader :e, :test_mode, :_params

  alias :push_origin :push 

  def push(arg)
    return push_origin(arg) unless arg.is_a? ArrayPrintParams

    alt_push(arg)
  end 

  def alt_push(_params = {})
    @_params = _params

    fetch_paramaters_values
    
    self << e

    return standard_output if test_mode

    colored_output 
  end

  def colored_output
    puts e.colorize(color: :green, mode: :bold) 
    self 
  end

  def fetch_paramaters_values
    @e, @test_mode = _values.first, _values.second
  end 

  def _values
    _params.fetch_values(:element, :test_mode)
  end

  def second
    self[1]
  end 

  def standard_output
    print "#{e}\n"
    self
  end
end 
