#!/usr/bin/env ruby

require 'pp'
require 'colorized_string'
require 'pry'
require 'byebug'

class Array
  attr_reader :e, :test_mode

  def push(_params)
    @e = _params[:element]
    @test_mode = _params[:test_mode] 
    
    self << e

    return standard_output if test_mode

    colored_output 
  end

  def colored_output
    puts e.colorize(color: :green, mode: :bold) 
    self 
  end

  def standard_output
    print "#{e}\n"
    self
  end
end 
