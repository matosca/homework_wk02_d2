class Bear

  attr_reader :bear_name, :type_of_bear

  def initialize(bear_name, type_of_bear)
    @bear_name = bear_name
    @type_of_bear = type_of_bear
    @food = []
  end

  def food_count()
    return @food.length()
  end

  def bear_takes_fish(fish)
    @food << fish
  end

  def roar()
    return "Rooooaaaaarrrrrr!"
  end

  def cath_fish_from_river(bear)
    for fish in river.bank_of_fish()
      lose_fish(fish)
    end
    bear.bear_takes_fish(fish)
  end

end
