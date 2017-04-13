class Board
	attr_accessor :board

	def initialize()
		@board = Array.new(9)
	end

 	def mark_space(position, marker)
 		@board[position] = marker
 	end

 	def erase_space(position)
 		@board[position] = nil
 	end

 	def number_of_empty_spaces()
 		current_position = 0
 		number_of_empty_spaces = 0

 		board.each do
 			if board[current_position] == nil
 				number_of_empty_spaces += 1
 			end
 			current_position += 1 			
 		end
 		number_of_empty_spaces
 	end

 	def marker_at_space(position)
 		@board[position]
 	end
end