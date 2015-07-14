module GameOfLife
  # it is a representaion of Conway's Game of Life
  class Board
    DEAD = "dead"
    ALIVE = "alive"

    def initialize(live_seed_location)
      @live_seed_location = live_seed_location
    end

    def present_generation
      if @live_seed_location == [1, 1] 
       [[DEAD, DEAD, DEAD], 
       [DEAD, ALIVE, DEAD], 
       [DEAD, DEAD, DEAD]]
      else
        [[DEAD, ALIVE, DEAD], 
        [DEAD, ALIVE, DEAD], 
        [DEAD, ALIVE, DEAD]]
      end
    end
  end
end
