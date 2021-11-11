class Question
  def initialize n1, n2
    @num1 = n1
    @num2 = n2
    @answer = @num1 + @num2
  end

  def correct_answer? ans
    @answer.to_i == ans.to_i ? true : false
  end

  def to_s
    "What does #{@num1} plus #{@num2} equal?"
  end
end