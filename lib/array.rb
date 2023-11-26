require 'colorized_string'
require 'pry'

class Array
  attr_reader :e

  def push(e:, test_mode: false)
    @e = e
    
    self << e

    return standard_output if test_mode

    colored_output 
  end

  def colored_output
    puts ::ColorizedString[e&.to_s].colorize(color: :green, mode: :bold) 
    self 
  end

  def standard_output
    print "#{e}\n"
    self
  end
end 