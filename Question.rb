class Question
  attr_reader :first_num, :second_num, :answer

  def initialize
    @first_num = 1 + rand(20)
    @second_num = 1 + rand(20)
    @answer = @first_num + @second_num
  end

  def math_question
    "What does #{@first_num} + #{@second_num} equal?"
  end
end