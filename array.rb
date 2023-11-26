class Array
  require 'colorize'
  require 'pry'

  def push(e)
    puts e.colorize(color: :green, mode: :bold) 
    self << e
  end
end 