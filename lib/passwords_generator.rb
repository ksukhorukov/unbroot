class PasswordsGenerator
  attr_reader :length, :number, :random_password, :test_mode

  def initialize(length: 200, number: 100, passwords: [], test_mode: false)
    @length = length
    @number = number
    @passwords = passwords
    @test_mode = test_mode
  end

  def self.generate_passwords
    ::PasswordsGenerator.new.generate_passwords
  end

  def generate_passwords
    (1..number).inject(@passwords) { |passwords, _n| passwords.push(e: generate_random_password, test_mode: test_mode) }
    self
  end

  private

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
