require_relative "marsrover"
# 5 5
# 1 2 N
# LMLMLMLMM

class Commander
	
	def create_rover(starting_point)
		coords = starting_point.split(" ")
		@rover = Rover.new(coords[0], coords[1], coords[2])
	end

	def move_mover(move_command)
		move_command.split("").each do |c| 
			if v =="L"
				@rover.turn_left
			elsif c == "R"
				@rover.turn_right
			elsif c == "M"
				@rover.move

		end		
		end
end

end

command = Commander.new
command.create_rover("1 2 N")