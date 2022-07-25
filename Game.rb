class Game
  attr_reader :current_player

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @current_player = @player1
  end

  def round
    puts "----- NEW TURN -----"

    question = Question.new

    if (@current_player == @player1)
      @current_player = @player2
    else 
      @current_player = @player1
    end

    puts "#{@current_player.name}: What does #{question.first_num} plus #{question.second_num} equal?"

    answer = gets.chomp.to_i

    if (answer != question.answer)
      puts "#{@current_player.name}: Seriously? No!"
      @current_player.lose_lives
      puts "Lives left: #{@player1.name} = #{@player1.lives}/3 vs. #{@player2.name} = #{@player2.lives}/3"
    else 
      puts "#{@current_player.name}: YES! You are correct."
      puts "Lives left: #{@player1.name} = #{@player1.lives}/3 vs. #{@player2.name} = #{@player2.lives}/3"
    end

  end

end