class RockPaperScissors

  # Exceptions this class can raise:
  class NoSuchStrategyError < StandardError ; end

  def self.winner(player1, player2)
    if !(player1[1] == 'R' || player1[1] == 'S' || player1[1] == 'P')
      raise NoSuchStrategyError,"Strategy must be one of R,P,S"
    end
    if !(player2[1] == 'R' || player2[1] == 'S' || player2[1] == 'P')
      raise NoSuchStrategyError,"Strategy must be one of R,P,S"
    end
    if player1[1] == 'R'
      if player2[1] == 'R'
        return player1
      elsif player2[1] == 'S'
        return player1
      else
        return player2
      end
    elsif player1[1] == 'P'
      if player2[1] == 'P'
        return player1
      elsif player2[1] == 'R'
        return player1
      else
        return player2
      end
    else
      if player2[1] == 'S'
        return player1
      elsif player2[1] == 'P'
        return player1
      else
        return player2
      end
    end
  end
  
  def self.tournament_winner(tournament)
    if tournament[0][0].is_a?(String) && tournament[1][0].is_a?(String)
      return winner(tournament[0],tournament[1])
    else
      tournament_winner(tournament[0][1])
    end
  end
  
end
