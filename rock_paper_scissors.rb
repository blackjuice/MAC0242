=begin
	Integrantes: 
	Leonardo Daneu Lopes	8516816
	Lucas Sung Jun Hong	8124329
=end


class RockPaperScissors
    
    def self.winner(player1, player2)
        # caso a escolha dos dois seja igual
        if (player1.last.downcase == player2.last.downcase)
            return player1
        end
        case (player1.last.downcase)
            when "r" then 
                if (player2.last.downcase == "s") 
                    return player1 
                else return player2 end
            when "p" then 
                if (player2.last.downcase == "r") 
                    return player1 
                else return player2 end
            when "s" then 
                if (player2.last.downcase == "p") 
                    return player1 
                else return player2 end
        end 
    end       
end
