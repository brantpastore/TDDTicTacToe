require 'human'
require 'input_output'

describe 'Human' do
	it 'Allows a human player to select and mark a space on the board'	do
		io_class = Input_output.new
		new_human = Human.new(io_class)
		new_board = Board.new
		position = new_human.select_position(new_board)

		expect(new_board.marker_at_space(position)).to eq "O"
	end
end