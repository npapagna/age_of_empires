class Weapon

  def self.attacking_with_strength_in offensive_strength, a_game
    self.new offensive_strength, a_game
  end


  def initialize offensive_strength, a_game
    @offensive_strength = offensive_strength
    @game = a_game
  end

  def attack an_enemy
    @game.player_attacked_by self, an_enemy
  end

  def attack_resited_with defensive_strength
    damage = @offensive_strength - defensive_strength

    damage
  end

end