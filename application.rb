require_relative './initializer.rb'

module Application
  include Initializer

  def self.perform 
    ::PasswordsGenerator.generate_passwords
  end 
end
