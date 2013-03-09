class Player         #name, oneMoreCard, cards, hand
  attr_writer :oneMoreCard
  attr_reader :name
  def initialize(name)
    @name=name
  end

  def addCards (cards)
    @cards = cards
    @hand = @cards.getCard
  end

  def getCards
    result=[]
    @hand.each {|elem| result+=[@cards.defCard(elem)]}
    result
  end

  def addCard
    @hand+=@cards.getCard
  end

  def continue? #if sumOfHand>=21 or "fold" = true
     (sumOfHand>=21)|| @oneMoreCard=='f'
  end

   def sumOfHand
      sum=0
      @hand.each { |card| sum+=card }
      if sum>21
        sum=0
        @hand.each do |card|
          if card == 11
            card = 1
          end
          sum+=card
        end
      end
      sum
   end
end