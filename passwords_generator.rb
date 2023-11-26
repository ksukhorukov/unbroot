class PasswordsGenerator
  attr_reader :length, :number, :passwords

  def initialize(length = 200, number = 100, passwords = [])
    @length = length
    @number = number
    @passwords = passwords
  end

  def self.generate_and_print_passwords
    ::PasswordsGenerator.new.generate_passwords.print_passwords
  end

  def generate_passwords
    (1..number).inject(@passwords) { |passwords, _n| passwords << random_password }

    self
  end

  def random_password
    (1..length).inject('') { |pass, _n| pass += shuffle.sample.to_s }
  end

  def print_passwords
    passwords.each { |password| puts password }
  end

  private

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
