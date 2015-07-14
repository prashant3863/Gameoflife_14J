require "spec_helper"

module GameOfLife
  describe "Board" do
    context "present genration" do 
      it "initialized by only one seed location" do
        DEAD = Board::DEAD
        ALIVE = Board::ALIVE
        live_seed_location = [1, 1]
        board = Board.new(live_seed_location)
        expect(board.present_generation).to eq([[DEAD, DEAD, DEAD], 
                                                [DEAD, ALIVE, DEAD], 
                                                [DEAD, DEAD, DEAD]])
      end

      it "initialize oscillator" do 
        DEAD = Board::DEAD
        ALIVE = Board::ALIVE
        live_seed_location = [[1, 0], [1, 1], [1, 2]]
        board = Board.new(live_seed_location)
        expect(board.present_generation).to eq([[DEAD, ALIVE, DEAD], 
                                                [DEAD, ALIVE, DEAD], 
                                                [DEAD, ALIVE, DEAD]])
      end
    end
  end
end