class Game

  def initialize a_lives_board
    @lives_board = a_lives_board
  end


  def warrior defensive_strength, offensive_strength
    armor = armor_with defensive_strength
    weapon = weapon_with offensive_strength
    new_player = Soldier.defending_and_attacking_with armor, weapon

    @lives_board.register_new_player new_player
  end

  def swordsman defensive_strength, offensive_strength, sword_offensive_strength
    total_offensive_strength = offensive_strength + sword_offensive_strength

    warrior defensive_strength, total_offensive_strength
  end

  def wall defensive_strength
    wall = armor_with defensive_strength

    @lives_board.register_new_player wall
  end

  def missile size
    offensive_strength = 10 * size

    weapon_with offensive_strength
  end


  def weapon_with offensive_strength
    Weapon.attacking_with_strength_in offensive_strength, self
  end

  def armor_with defensive_strength
    Armor.defending_with_strength defensive_strength
  end


  def player_attacked_by a_weapon, a_player
    damage_strength = a_player.resist_attack_of a_weapon

    @lives_board.subtract_lives_of_by a_player, damage_strength
  end

end