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

module Initializer
  HOME_DIRECTORY = ENV['HOME']
  PROJECT_DIRECTORY = '/workspace/unbroot'
  LIBS_DIR = HOME_DIRECTORY + PROJECT_DIRECTORY + '/lib/'

  require 'pry'
  require 'colorize'
  require 'colorized_string'
  require 'rspec'

  def self.included(base)
    require_all
  end

  def self.make_lib_path(f)
    File.absolute_path f
  end

  def self.require_all
    Dir.chdir(LIBS_DIR) do 
      Dir.glob('*.{rb}').each { |f| require_relative ::Initializer.make_lib_path(f) }
    end
  end
end

