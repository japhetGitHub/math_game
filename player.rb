class Player
  attr_accessor :lives
  def initialize name
    @lives = 3
    @name = name
  end

  def attempt
    answer = gets.chomp
  end

  def is_dead?
    @lives <= 0 ? true : false
  end

  def to_s
    @name
  end
end