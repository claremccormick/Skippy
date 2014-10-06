class Point
  attr_accessor :x_value, :y_value

  def initialize
    @x_value = 0
    @y_value = 0
  end

  def move!(moves)
    if moves == :North
      @y_value = @y_value + 1

    elsif moves == :South
      @y_value = @y_value - 1

    elsif moves == :East
      @x_value = @x_value + 1

    else
      @x_value = @x_value - 1
    end
  end

  def print_location
    puts "Hopped to: (#{@x_value}, #{@y_value})"
  end
end
