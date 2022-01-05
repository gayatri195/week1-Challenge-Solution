class Deck
    attr_reader :cards
    def display_cards
        puts "=" * 10
        self.cards.each do |card|
            puts "#{card.type}, #{card.number}"
        end
    end
    def initialize
       @cards = []
       ranks = ["A", "K", "Q", "J", "10", "9", "8", "7", "6", "5", "4", "3", "2"]
       types = ["spade", "heart", "club", "diamond"]
       ranks.each do |rank|
            types.each do |type|
                @cards.push(Card.new type, rank)
            end
            # @cards.push(Card.new "heart", rank)
            # @cards.push(Card.new "club", rank)
            # @cards.push(Card.new "diamond", rank)
        end
    end
    def shuffle
         @cards.shuffle!
    end
    def deal
         @cards.shift    
    end  
end

class Card  
    attr_accessor :type, :number  
    def initialize(type, number)
        @type = type
        @number = number
    end
end
deck = Deck.new

puts "displaying cards"
deck.display_cards

puts "shuffle cards"
deck.shuffle
deck.display_cards

puts "dealing with cards"
deck.deal
deck.display_cards