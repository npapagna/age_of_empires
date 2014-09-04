class Armor

  def self.defending_with_strength defensive_strength
    self.new defensive_strength
  end


  def initialize defensive_strength
    @defensive_strength = defensive_strength
  end

  def resist_attack_of a_weapon
    a_weapon.attack_resited_with @defensive_strength
  end

end