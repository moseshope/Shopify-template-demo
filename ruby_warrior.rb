class Player
  
  def play_turn(warrior)
    if warrior.feel.enemy?
      warrior.attack!
    elsif warrior.feel.captive?
      warrior.rescue!
    else
      if warrior.health < 20 && !taking_damage?(warrior)
        warrior.rest!
      else
        warrior.walk!:backward
      end
    end
    @health = warrior.health
  end
  
  def taking_damage?(warrior)
    warrior.health < @health
  end
  
end