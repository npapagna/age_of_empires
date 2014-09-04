# like a score board, but tracking lives of each player

class LivesBoard

  def self.giving_new_players_lives number_of_lives
    self.new number_of_lives
  end


  def initialize new_player_lives
    @new_player_lives = new_player_lives
    @lives_by_player = {}
  end

  def register_new_player a_player
    update_lives_of a_player, @new_player_lives
    a_player
  end

  def subtract_lives_of_by a_player, lives_to_subtract
    new_lives = lives_of(a_player) - lives_to_subtract

    update_lives_of a_player, new_lives
  end

  def lives_of a_player
    @lives_by_player[a_player]
  end

  def update_lives_of a_player, new_lives
    @lives_by_player[a_player] = new_lives
  end

end