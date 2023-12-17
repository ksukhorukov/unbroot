require 'pry'

class ArrayPrintParams
  attr_reader :params, :element, :test_mode

  def initialize(params_h)
    @params = params_h

    fetch_paramaters_values
  end 

  def fetch_values(k1, k2)
    fetch_paramaters_values
  end 

  private

  def fetch_paramaters_values
    @e, @test_mode = values.first, values.second
  end 

  def values
    params.fetch_values(:element, :test_mode)
  end
end 