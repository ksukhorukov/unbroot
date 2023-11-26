require_relative './initializer.rb'

module Application
  include Initializer

  def perform 
    ::PasswordsGenerator.generate_passwords
  end 
end
