class RockPaperScissors
  def initialize(pick1,pick2)
    @pick1 = pick1
    @pick2 = pick2
    @first_wins = "player one wins with #{@pick1}!"
    @second_wins = "player two wins with #{@pick2}!"

  end

  def gameplay
    if @pick1 == @pick2
      return "it's a draw"
    elsif
      case @pick1
        when :rock
          @message = (@pick2 == :scissors ) ? @first_wins : @second_wins

        when :paper
          @message = (@pick2 == :rock) ? @first_wins : @second_wins

        when :scissors
          @message = (@pick2 == :paper) ? @first_wins : @second_wins

      end
      return @message
    end

  end




end
