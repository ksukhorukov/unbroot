require_relative '../spec_helper.rb'

require 'pry'

RSpec.describe ::ArrayPrintParams do 
  # let(:_params) {  { element: 1, test_mode: true } }
  # let(:array_print_params) { subject.new(_params) }

  it 'class can be instantiated and params can be later accessed with appropriate readers' do 
    array_print_params = ::ArrayPrintParams.new({ element: 1, test_mode: true })

    # expect(array_print_params.element).to eq(1)
    # expect(array_print_params.test_mode).to eq(true)
  end
end 