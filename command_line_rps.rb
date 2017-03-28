class RockPaperScissors
  attr_accessor :computer_pick, :player_pick
  attr_reader :options

  def initialize
    @options = [:rock, :paper, :scissors]
    @computer_pick = options[rand(2)]
    @player_pick = nil
    @computer_win_message = "computer wins, yet again puny human"
    @player_win_message = "you win this time. but i'll be taking your job soon. and driving your car"
  end

  def play
    puts "make your choice!"
    @player_pick = gets.chomp.downcase.to_sym
    if !@options.include?(@player_pick)
      puts "that's not one of the options and you know it. try again"
      play()
    elsif @player_pick == @computer_pick
      puts "it is a draw"
    elsif @computer_pick == :rock
       player_pick == :scissors ? message = @computer_win_message : message = @player_win_message
       puts message
    elsif @computer_pick == :paper
       player_pick == :rock ? message = @computer_win_message : message = @player_win_message
       puts message
    elsif @computer_pick == :scissors
       player_pick == :paper ? message = @computer_win_message : message = @player_win_message
       puts message

    end
    puts "#{@computer_pick} was the computer's choice, by the way."
  end
end

rocks = RockPaperScissors.new()
rocks.play
