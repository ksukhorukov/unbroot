class Array
  require 'colorize'

  def push(e)
    puts e.colorize(color: :green, mode: :bold) 
    self << e
  end
end 