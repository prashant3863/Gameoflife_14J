module GameOfLife
  # it is a representaion of Conway's Game of Life
  class Board
    DEAD = "dead"
    ALIVE = "alive"

    def initialize(live_seed_location)
      @live_seed_location = live_seed_location
    end

    def present_generation
       [[DEAD, DEAD, DEAD], 
       [DEAD, ALIVE, DEAD], 
       [DEAD, DEAD, DEAD]]
    end
  end
end
