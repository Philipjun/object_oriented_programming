class Rover

	# why is this necessary?
	# what are my instance variables?
	# what ARE instance variables?
		# how are they different from 'normal' variables?

	# what's an instance of a class? (an object)
	# how do i make an instance of a class (Rover.new)


attr_accessor :x, :y, :direction

	DIRECTIONS = %w[N E S W]
	NORTH = 0
	EAST = 1
	SOUTH = 2
	WEST = 3

	def initialize (x,y,direction)
		@x = x
		@y = y
		@direction = direction

	end

	def move
		if @direction == "N"
			@y +=1
		elsif direction == "E"
			@x += 1

		elsif direction == "S"
			@y -=1

		elsif direction == "W"
			@x -=1
		end
	end

	def to_s
		"#{@x}, #{@y}, #{@direction}"
	end

	def turn_right
		@direction = (@direction + 1) % 4
		self
	end

	def turn_left
		if @direction == "N"
			@direction = "W"
		elsif @direction == "W"
			@direction = "S"
		elsif direction =="S"
			@direction ="E"
		elsif @direction =="E"
			@direction = "N"
		end
	end
end


Phil = Rover.new(1, 2, 'N')
Phil.move

