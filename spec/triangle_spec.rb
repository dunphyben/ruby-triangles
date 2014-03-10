require 'rspec'
require 'triangle'

describe 'Triangle' do
  it 'Initializes a new instance of the Triangle class' do
    test_triangle = Triangle.new(2,2,2)
    test_triangle.should be_an_instance_of Triangle
  end
  it 'tells you if a triangle is equilateral' do
    test_triangle = Triangle.new(2,2,2)
    test_triangle.triangle_love.should eq 'Equilateral'
  end
end
