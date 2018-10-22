require 'pry'

class Deck
    attr_accessor :cards
    
    @@all = []

    def initialize
        @cards = []
        Card.suit.each do | suit |
            Card.rank.each do | rank |
                self.cards << Card.new(rank, suit)
            end
        end
        @@all << self
    end

    def self.all
        @@all
    end

    def choose_card
        # self.cards.shuffle.pop
        self.cards.delete_at(rand(1..self.cards.length))
    end
end

class Card
    attr_accessor :suit, :rank

    @@rank = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
    @@suit = ["Hearts", "Clubs", "Diamonds", "Spades"]

    def initialize(suit, rank)
        @rank = rank
        @suit = suit
    end

    def self.rank
        @@rank
    end

    def self.suit
        @@suit
    end
end

0