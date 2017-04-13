class Input_output
	attr_accessor :input
	attr_accessor :output

	def initialize()
		@input = $stdin.gets
		@output = puts
	end

	def get_input()
		input.to_i
	end

	def print_output(string)
		output string
	end
end