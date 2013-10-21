class RockPaperScissors

  # Exceptions this class can raise:
  class NoSuchStrategyError < StandardError ; end

  def self.winner(player1, player2)
    if ["R", "P", "S"].include?(player1[1].upcase) && ["R", "P", "S"].include?(player2[1].upcase)
		player1[1] + player2[1] =~ /rs|sp|pr|rr|ss|pp/i ? player1 : player2
    else
    	raise RockPaperScissors::NoSuchStrategyError, "Strategy must be one of R,P,S" 
    end
  end

  def self.tournament_winner(tournament)
  	if tournament[0][0].is_a?(String)
  		self.winner(tournament[0], tournament[1])
  	else
  	    p1 = self.tournament_winner(tournament[0])
    	p2 = self.tournament_winner(tournament[1])
    	self.tournament_winner([p1,p2])
  	end
  end

end