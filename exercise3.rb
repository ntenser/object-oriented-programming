class Player

  attr_accessor :gold_coins, :health_points, :lives, :score
  def initialize
    @gold_coins = 0
    @health_points = 10
    @lives = 5
    @score = 0

  end

  def do_battle

    @health_points -= 1
  if @health_points == 0
      @lives -= 1
      @health_points = 10
  end


  if lives == 0
    restart
  end
  end

  def restart
    @gold_coins = 0
    @health_points = 10
    @lives = 5
    @score = 0

  end

  def level_up
    @lives += 1
    @score -= 10
  end

  def collect_treasure(gold_collected)
    @gold_coins = gold_collected + @gold_coins

  if @gold >= 10
    @score += 1
    @gold_coins -= 10
  end

  if @score == 10
    level_up
  end
  end

end
