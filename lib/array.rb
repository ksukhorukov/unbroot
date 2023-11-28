#!/usr/bin/env ruby

require 'pp'
require 'colorized_string'
require 'pry'
require 'byebug'

class Array
  attr_reader :e, :test_mode, :_params

  def push(arg)
    return super unless arg.is_a? ArrayPrintParams
    
    alt_push(arg)
  end 

  def alt_push(_params = {})
    @_params = _params

    fetch_paramaters_values
    
    self << e

    return standard_output if test_mode

    colored_output 
  end

  def colored_output
    puts e.colorize(color: :green, mode: :bold) 
    self 
  end

  def fetch_paramaters_values
    @e, @test_mode = _values.first, _values.second
  end 

  def _values
    _params.fetch_values(:element, :test_mode)
  end

  def second
    self[1]
  end 

  def standard_output
    print "#{e}\n"
    self
  end
end 
