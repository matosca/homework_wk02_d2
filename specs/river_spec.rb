require("minitest/autorun")
require("minitest/rg")
require_relative("../river")
require_relative("../fish")
require_relative("../bear")


class RiverTest < MiniTest::Test
  
  def setup
    @river = River.new("Amazon")
    @fish1 = Fish.new("Salmon")
    @fish2 = Fish.new("Trout")
  end

  def test_can_create_river()
    assert_equal(River, @river.class())
  end

  def test_get_river_name()
    assert_equal("Amazon", @river.river_name())
  end

  def test_fish_count()
    assert_equal(0, @river.fish_count())
  end

  def test_add_fish_to_river()
    @river.add_fish_to_river(@fish1)
    assert_equal(1, @river.fish_count)
  end

  def test_add_multiple_fish_to_river()
    @river.add_fish_to_river(@fish1)
    @river.add_fish_to_river(@fish2)
    assert_equal(2, @river.fish_count)
  end

  def test_lose_fish()
    @river.add_fish_to_river(@fish1)
    @river.add_fish_to_river(@fish2)
    @river.lose_fish(@fish1)
    assert_equal(1, @river.fish_count)
  end

end
