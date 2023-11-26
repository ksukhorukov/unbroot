module Initializer
  LIBS_DIR = './lib'

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
