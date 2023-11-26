require 'colorize'

class PasswordsGenerator
  attr_reader :length, :number, :random_password, :passwords

  def initialize(length = 200, number = 100, passwords = [])
    @length = length
    @number = number
    @passwords = passwords
  end

  def self.generate_and_print_passwords
    ::PasswordsGenerator.new.generate_passwords
  end

  def generate_passwords
    (1..number).inject(@passwords) { |passwords, _n| passwords << generate_print_return_random_password }
    self
  end

  def generate_print_return_random_password
    generate_random_password and print_random_password
  end

  def print_random_password
    puts random_password.colorize(color: :green, mode: :bold) and return random_password
  end

  private

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
