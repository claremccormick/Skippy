class Die
attr_accessor :direction

  def initialize
    @direction
  end

  def roll_die
  random = rand(4)
    if random == 0
      @direction = :North

    elsif random == 1
      @direction = :South

    elsif random == 2
      @direction = :East

    else
      @direction = :West
    end
  end
end
