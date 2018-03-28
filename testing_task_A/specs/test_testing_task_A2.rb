require_relative "./../cardGame_task_A2/cardGame"
require_relative "./../cardGame_task_A2/card"
require("minitest/autorun")

class TestCardGame < Minitest::Test

  def setup
    @card_1   = Card.new("spade",1, "ACE")
    @card_2   = Card.new("spade",8, "EIGHT")
    @cardGame = CardGame.new()
  end

  def test_checkforAce
    assert_equal(true, @cardGame.checkforAce(@card_1));
  end

  def test_highest_card
    assert_equal("EIGHT", @cardGame.highest_card(@card_1, @card_2));
  end

  def test_cards_total
    assert_equal("You have a total of 9", CardGame.cards_total([@card_1, @card_2]))
  end

end
