require ('minitest/autorun')
require ('minitest/emoji')
require_relative('../models/rock_paper_scissors_engine')

class RockPaperScissorsTest < Minitest::Test

  def test_draw
    test_game = RockPaperScissors.new(:rock,:rock)
    assert_equal(test_game.gameplay, "it's a draw")
  end

  def test_rock_wins
    test_game = RockPaperScissors.new(:rock,:scissors)
    assert_equal(test_game.gameplay, "rock wins!")
  end

  def test_scissors_loses
    test_game = RockPaperScissors.new("scissors","rock")
    assert_equal(test_game.gameplay, "rock wins!")
  end

  def test_paper_wins
    test_game = RockPaperScissors.new(:rock,:paper)
    assert_equal(test_game.gameplay, "paper wins!")
  end
end
