require_relative 'die'
require_relative 'point'
require_relative 'kangaroo'
require_relative 'grid'

class Main
  attr_accessor :dimension

  def initialize
    @dimension
  end

  grid = Grid.new
  kangaroo = Kangaroo.new grid

#  begin
#    print('Please enter the dimension of the grid (>= 1): ')
#    @dimension = gets.chomp.to_i
#  end while @dimension < 1

  kangaroo.hop!
end
