require './play.rb'
require './cards.rb'

players = [Player.new('zeppelin'),Player.new('balloon'),Player.new('plane')]
cards = Cards.new
players.each {|pl| pl.addCards(cards)}#initialization DONE

players.each do |player|
  until player.continue?
    player.addCard
    puts "#{player.name}, you have cards: #{player.getCards}. Total points: #{player.sumOfHand}"
    puts "Press 'f' to save this state"  if player.sumOfHand<21
    player.oneMoreCard=gets.chomp
  end
end

players.sort_by!{|el| 1.0/el.sumOfHand}
i=0
while players[i].sumOfHand>21 && i<players.count-1
  i+=1
end
if players[i].sumOfHand<=21
  puts "#{players[i].name} win with #{players[i].sumOfHand} points"
else
  puts "Nobody win!"
end