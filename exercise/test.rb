require 'open3'
require 'minitest/autorun'

class TestMeme < Minitest::Test
  def test_solution
    o, e, _ = Open3.capture3('ruby solution.rb')
    assert_equal 'hello, world!', o.chomp, e
  end
end
