require './play.rb'
require './cards.rb'
players = [Player.new("asd"),Player.new("zzz"),Player.new("plane")]
cards = Cards.new
players.each {|pl| pl.addCards(cards)}
#puts players.to_s
