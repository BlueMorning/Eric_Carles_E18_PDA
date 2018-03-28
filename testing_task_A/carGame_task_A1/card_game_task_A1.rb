### Testing task A code:

# Carry out Static testing on the code below.
# Correct the errors below that you spotted in task 1.

class CardGame

  def initialize(suit, value)
    @suit = suit
    @value = value; # The semicolon is not required.
  end

  def checkforAce(card)
    if card.value = 1 # it should be if card.value == 1 to test the value instead of assigning it.
      return true
    else
      return false
    end
  end

  dif highest_card(card1 card2) # if should be def instead of dif, and a coma is required to separate parameters.
  if card1.value > card2.value
    return card.name # card does not exist here it has to be either card1 or card2.
  else
    card2 # to be consistent the return statement is required and also a choice has to be made, the function
          # has to return either a name or a card name.
  end
end # The function needs a better indentation.
end # This end should be at the end of the file to close the class definition.

def self.cards_total(cards)
  total # total must be initialised with a value like 0 for instance.
  for card in cards
    total += card.value
    return "You have a total of" + total # The return statement should be after the for loop,
    # otherwise the for look will be stop on the first loop.
  end
end
