class Input_output
	attr_accessor :input
	attr_accessor :output

	def initialize()
		@output = puts
	end

	def get_input()
		0
	end

	def print_output(string)
		output string
	end
end