# 1. Write out the Card and Deck classes to make the program work. The Deck class should hold a list of Card instances.
# 2. Change the program to use multiple choice questions. The Card class should be responsible for checking the answer.
# 3. CHALLENGE: Change the program to allow the user to retry once if they get the wrong answer.


class Card
  attr_reader :question, :answer

  def initialize(question,answer)
    @question = question
    @answer = answer
  end
end


class Deck
  def initialize(deck_name)
    @cards = []
    deck_name.each do |question, answer|
      @cards << Card.new(question, answer)
    end
  end

  def draw_card
    return @cards.pop
  end

  def remaining_cards
    return @cards.length
  end
end


trivia_data = {
  "What is the capital of Illinois?
  A. wrong
  B. Springfield
  C. wrong" => "B",
  "Is Africa a country or a continent?
  A. Continent
  B. Country" => "A",
  "Tug of war was once an Olympic event.
  A. True
  B. False?" => "A",
  "Is a dog a cat?
  A. Yes
  B. No" => "B"
}

deck = Deck.new(trivia_data) # deck is an instance of the Deck class

while deck.remaining_cards > 0
  card = deck.draw_card # card is an instance of the Card class
  puts card.question
  user_answer = gets.chomp
  count_correct = 0
  count_wrong = 0
  if user_answer.downcase != card.answer.downcase
    puts "Incorrect!"
  else
    puts "Correct!"
  end
end