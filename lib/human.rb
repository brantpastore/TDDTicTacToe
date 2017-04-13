require 'board'
require 'input_output'

class Human
	attr_accessor :input_output

	def initialize(input_output)
		@input_output = Input_output.new
	end

	def select_position(new_board)
		selected_position = input_output.get_input()

		if new_board.board[selected_position] == nil
			new_board.mark_space(selected_position, "O")
			return selected_position
		else
			puts "That space is already marked"
		end
	end
end