require 'minitest/autorun'
require_relative '../warehouse_picker_functions.rb'

class TestWarehouse < Minitest::Test

  def test_given_bay()
    item = given_bay("b5")
    assert_equal('nail filer', item)
  end

  def test_given_item()
    item = given_item("nail filer")
    assert_equal('b5', item)
  end

  def test_list_of_bays()
    item = list_of_bays("b5", "b10", "b6")
    assert_equal(["nail filer", "empty", "tooth paste", 5], item)
  end

end
