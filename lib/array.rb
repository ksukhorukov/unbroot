#!/usr/bin/env ruby

require 'pp'
require 'colorized_string'
require 'pry'
require 'byebug'

class Array
  attr_reader :e, :test_mode

  def push(_params_custom)
    # pp _params_custom
    @e = _params_custom[:element]
    @test_mode = _params_custom[:test_mode] 
    
    self << e

    return standard_output if test_mode

    colored_output 
  end

  def colored_output
    return if e.nil?

    puts e.colorize(color: :green, mode: :bold) 
    self 
  end

  def standard_output
    print "#{e}\n"
    self
  end
end 
