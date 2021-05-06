require 'minitest/autorun'
require './lib/rgb'

class RgbTest < Minitest::Test
  def test_to_hex
    # 成功パターン
    assert_equal('#000000', to_hex(0, 0, 0))
    assert_equal('#ffffff', to_hex(255, 255, 255))
    assert_equal('#043c78', to_hex(4, 60, 120))
    # 失敗パターン
    assert_raises(RuntimeError, '数字は0〜255までの間です') do
      to_hex(256, 0, 0)
    end
    assert_raises(RuntimeError, '数字は0〜255までの間です') do
      to_hex(-1, 0, 0)
    end
    assert_raises(RuntimeError, '引数は整数のみです') do
      to_hex(1.1, 0, 0)
    end
    assert_raises(RuntimeError, '引数は整数のみです') do
      to_hex('test', 'test', 'test')
    end
    assert_raises(RuntimeError, '引数は整数のみです') do
      to_hex('1', '1', '1')
    end
  end

  def test_to_ints
    assert_equal([0, 0, 0], to_ints('#000000'))
    assert_equal([255, 255, 255], to_ints('#ffffff'))
    assert_equal([4, 60, 120], to_ints('#043c78'))
  end
end
