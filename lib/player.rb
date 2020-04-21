class Player
     attr_accessor :name, :life_points

     
    def initialize (name)
        @name = name
        @life_points = 10 
    end


    def show_state 
        puts "#{@name} a #{@life_points} points de vie"
    end


    def attacks (attacked_player)
        damages = compute_damage 
        puts "Le joueur #{name} attaque le joueur #{attacked_player.name}"
        attacked_player.gets_damage(damages)
        puts "Il lui inflige #{damages} points de dommage."
    end
    

    def gets_damage(damage_number)
        @life_points -= damage_number           # (Que l'on peut également écrire @life_points = @life_points - damage number)
        #puts "#{@name} subit #{damage_number} points de dommage"
    
    if @life_points <= 0 
        puts "#{@name} a été tué ! :(" 
    end
    end


    def compute_damage
        return rand(1..6)
    end
end