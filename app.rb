require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'


player1 = Player.new("ledjo")
player2 = Player.new("ledavid")

    puts "Voici l'état de chaque joueur :"
    #puts "#{player1.name} a #{player1.show_state} points de vie"
    #puts "#{player2.name} a #{player2.show_state} points de vie"
    #puts "#{player1.show_state}"
    #puts "#{player2.show_state}"
    player1.show_state
    player2.show_state
    puts " "
    puts "Passons à la phase d'attaque :"
    
while player1.life_points > 0 && player2.life_points > 0
    puts player2.attacks(player1)
    puts player1.attacks(player2)
    if player2.life_points <= 0 && player1.life_points <= 0
        break
    end
end














binding.pry