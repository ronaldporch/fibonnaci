require 'fib'
require 'minitest/autorun'
require 'minitest/spec'

describe 'fibonnachi' do

  input = (1..11).to_a
  output = [1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144]

  it 'should display correct outputs' do
    input.each do |a|
      fib(a).must_equal(output[a - 1])
    end
  end

  it 'should not display incorrect numbers' do
    fib(8).wont_equal 8
    fib(6).wont_equal 56
    fib(9).wont_equal 96
  end

  it 'should not work for negative numbers of floats' do
    fib(-8).must_equal 'Invalid Number. Input a sequence of at least 1.'
    fib(0).must_equal 'Invalid Number. Input a sequence of at least 1.'
    fib(3.4).must_equal 'Invalid Number. Input a sequence of at least 1.'
  end

end
