require_relative '../spec_helper.rb'

require 'pry'

RSpec.describe ::ArrayPrintParams do 
  let(:params) { Hash.new(element: 1, test_mode: true) }
  let(:array_print_params) do 
    binding.pry
    subject.new(params) 
  end

  it 'class can be instantiated and params can be later accessed with appropriate readers' do 
    expect(array_print_params.element).to eq(1)
    expect(array_print_params.test_mode).to eq(true)
  end
end 