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

class PasswordsGenerator
  attr_reader :length, :number, :random_password, :test_mode

  def initialize(length: 200, number: 100_000_000, passwords: [], test_mode: false)
    @length = length
    @number = number
    @passwords = passwords
    @test_mode = test_mode
  end

  def self.generate_passwords
    ::PasswordsGenerator.new.generate_passwords
  end

  def generate_passwords
    (1..number).inject(@passwords) { |passwords, _n| passwords.push(params) }
    self
  end

  private

  def params 
    ArrayPrintParams.new(
      { 
        element: generate_random_password, 
        test_mode: test_mode
      }
    )
  end

  def passwords
    @passwords
  end

  def generate_random_password
    @random_password = (1..length).inject('') { |pass, _n| pass += shuffle.sample.to_s }
  end

  def dictionary
    @dictionary ||= numbers + letters + symbols
  end

  def numbers
    @numbers ||= (0..9).to_a
  end

  def letters
    @letters ||= ('A'..'z').to_a
  end

  def symbols
    @symbols ||= ('!'..'?').to_a
  end

  def shuffle
    dictionary.shuffle
  end
end
