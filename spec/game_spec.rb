require 'game'
require 'lives_board'
require 'soldier'
require 'armor'
require 'weapon'

describe Game do

  let(:lives_board) { LivesBoard.giving_new_players_lives 10 }
  let(:game) { Game.new lives_board }

  let(:warrior) { game.warrior 1, 3 }
  let(:swordsman) { game.swordsman 1, 1, 1 }
  let(:wall) { game.wall 1 }
  let(:missile) { game.missile 1 }

  describe 'warrior' do

    it 'attacks with his offensive strength' do
      warrior.attack swordsman

      lives_board.lives_of(swordsman).should == 8
    end

  end

  describe 'swordsman' do

    it 'attacks with his offensive strength + his swords offensive strength' do
      swordsman.attack warrior

      lives_board.lives_of(warrior).should == 9
    end

  end

  describe 'missile' do

    it 'attacks with an offensive strength twice its size' do
      missile.attack wall

      lives_board.lives_of(wall).should == 1
    end

  end

  describe 'wall' do

    it 'resists attacks with its defensive strength' do
      missile.attack wall

      lives_board.lives_of(wall).should == 1
    end

  end

end