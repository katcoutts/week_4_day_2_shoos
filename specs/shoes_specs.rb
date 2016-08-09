require('minitest/autorun')
require('minitest/rg')
require_relative('../models/shoe')

class TestShoe < Minitest::Test

  def setup
    @shoe = Shoe.new({"first_name" => "Katrina", "last_name" => "Coutts", "quantity" => 2, "size" => 7, "colour" => "Red", "street_address" => "72 Merton Place", "town" => "Edinburgh", "postcode" => "EH2 5FG"})
  end

  def test_first_name
    assert_equal("Katrina", @shoe.first_name)
  end

  def test_last_name
    assert_equal("Coutts", @shoe.last_name)
  end

  def test_pretty_name
    assert_equal("Katrina Coutts", @shoe.pretty_name)
  end 

  def test_has_size
    assert_equal(7, @shoe.size)
  end

  def test_has_quantity
    assert_equal(2, @shoe.quantity)
  end

  def test_gives_total
    assert_equal(120, @shoe.total)
  end

  def test_has_colour
    assert_equal('Red', @shoe.colour)
  end

  def test_has_street_address
    assert_equal("72 Merton Place", @shoe.street_address)
  end

  def test_has_town
    assert_equal("Edinburgh", @shoe.town)
  end

  def test_has_postcode
    assert_equal("EH2 5FG", @shoe.postcode)
  end

end  