class Soldier

  def self.defending_and_attacking_wth armor, weapon
    self.new armor, weapon
  end


  def initialize an_armor, a_weapon
    @armor = an_armor
    @weapon = a_weapon
  end

  def attack an_enemy
    @weapon.attack an_enemy
  end

  def resist_attack_of a_weapon
    @armor.resist_attack_of a_weapon
  end

end