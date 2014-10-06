require_relative 'die'
require_relative 'point'

class Kangaroo
  attr_accessor :new_location, :die

  def initialize (grid)
    @new_location = Point.new
    @grid = grid
    @die = Die.new
  end

  def hop!
    hop_counter = 0

    until at_home?
      temp_location = Point.new  #creates temporary location

      @new_location.print_location
      temp_location.x_value = @new_location.x_value
      temp_location.y_value = @new_location.y_value

      temp_location.move! @die.roll_die

      if !@grid.lies_outside? temp_location
        @new_location.move! @die.direction
        hop_counter += 1
      else
        puts "Oops, hit the boundary: (#{temp_location.x_value}, #{temp_location.y_value})"
      end
    end

    @new_location.print_location
    puts "\n Finished in #{hop_counter} hops!"
  end

  def at_home?
    if @new_location.x_value == 9 && @new_location.y_value == 9
      true

    else
      false
    end
  end
end



