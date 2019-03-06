class River

  attr_reader :river_name,  :bank_of_fish

  def initialize(river_name)
    @river_name = river_name
    @bank_of_fish = []
  end

  def fish_count
    @bank_of_fish.length()
  end

  def add_fish_to_river(fish)
    @bank_of_fish.push(fish)
  end

  def lose_fish(fish)
    index = @bank_of_fish.index(fish)
    @bank_of_fish.slice!(index, 1)
  end

end
