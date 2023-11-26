module Initializer
  LIBS_DIR = './lib'

  require 'pry'

  def self.included(base)
    require_all
  end

  def make_lib_path(f)
    File.absolute_path f
  end

  def self.require_all
    Dir.chdir(LIBS_DIR) do 
      Dir.glob('*.{rb}').each { |f| require_relative make_lib_path(f) }
    end
  end
end

