
require('minitest/autorun')
require('minitest/rg')
require_relative('../bear')
require_relative('../fish.rb')
require_relative('../river.rb')

class BearTest < MiniTest::Test

  def setup()
    @bear = Bear.new("Yogi", "Grizzly")
    @fish1 = Fish.new("Salmon")
    @fish2 = Fish.new("Trout")
  end

  def test_can_create_bear()
    assert_equal(Bear, @bear.class())
  end

  def test_get_bear_name()
    assert_equal("Yogi", @bear.bear_name())
  end

  def test_get_type_of_bear()
    assert_equal("Grizzly", @bear.type_of_bear())
  end

  def test_hungry_bear()
    assert_equal(0, @bear.food_count())
  end

  def test_bear_takes_fish()
    @bear.bear_takes_fish(@fish1)
    assert_equal(1, @bear.food_count())
  end

  def test_bear_takes_two_fish()
    @bear.bear_takes_fish(@fish1)
    @bear.bear_takes_fish(@fish2)
    assert_equal(2, @bear.food_count())
  end

  def test_bear_can_roar()
    assert_equal("Rooooaaaaarrrrrr!", @bear.roar())
  end

  def test_catch_fish_from_river()
    fish_caught = @fish1
    @river = River.new("Amazon")
    @river.add_fish_to_river(@fish1)
    @river.add_fish_to_river(@fish2)
    @bear.bear_takes_fish(fish_caught)
    @river.lose_fish(fish_caught)
    assert_equal(1, @river.fish_count())
  end

end
