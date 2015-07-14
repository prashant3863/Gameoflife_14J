require "spec_helper"

module GameOfLife
  describe "Board" do
    it "initialize present generation using seed location" do
      DEAD = Board::DEAD
      ALIVE = Board::ALIVE
      live_seed_location = [1, 1]
      board = Board.new(live_seed_location)
      expect(board.present_generation).to eq([[DEAD, DEAD, DEAD], 
                                              [DEAD, ALIVE, DEAD], 
                                              [DEAD, DEAD, DEAD]])
    end
  end
end