require 'board'

describe "Board" do
	it "marks a space" do
		new_board = Board.new
		new_board.mark_space(1, "X")

		expect(new_board.marker_at_space(1)).to eq "X"
	end

	it "the space is empty by default" do
		new_board = Board.new

		expect(new_board.marker_at_space(1)).to eq nil
	end

	it "can erase a space" do
		new_board = Board.new
		new_board.mark_space(1, "X")

		new_board.erase_space(1)

		expect(new_board.marker_at_space(1)).to eq nil
	end

	it "returns the number of empty spaces" do
		new_board = Board.new
		new_board.number_of_empty_spaces()

		new_board.mark_space(1, "X")

		expect(new_board.number_of_empty_spaces()).to eq 8
	end
end