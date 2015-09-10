=begin
	Integrantes: 
	Leonardo Daneu Lopes	8516816
	Lucas Sung Jun Hong	8124329
=end


class RockPaperScissors
    
    class NoSuchStrategyError < StandardError; end
    
    def self.winner(player1, player2)
        # caso a escolha dos dois seja igual
        raise NoSuchStrategyError, "Strategy must be one of R,P,S" unless (self.matches?(player1.last.downcase) and self.matches?(player2.last.downcase))

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

    def self.tournament_winner (tournament)
        if tournament[0][0].is_a? String
            return self.winner(tournament[0], tournament[1])
        end

        return self.winner(self.tournament_winner(tournament[0]), self.tournament_winner(tournament[1]))
    end

    def self.matches? (choice)
        if (choice.match(/^[rps]{1}$/) == nil)
            return false
        end 
        return true 
    end
end
