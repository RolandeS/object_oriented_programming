class Rover
	attr_accessor :x, :y, :direction

	def initialize(x, y, direction)
		@y = y.to_i
		@x = x.to_i
		@direction = direction
	end

	#affects the position of the rover. Depending on current direction and position, you'll need to update the x or y coordinates
	def move # takes (x, y, direction) from Rover
		if direction == "N"
			@y += 1
		elsif direction == "W"
			@x -= 1
		elsif direction == "S"
			@y -= 1
		elsif direction == "E"
			@x += 1
		else 
			return "The input direction enterned is wrong"
		end
	end

	#affects the direction of the rover. Depending on the current direction of the rover, the new direction will be determined with either turning L or R.
	def turn(t)
		cardinal = ["N", "E", "S", "W"]
		pos = cardinal.index(@direction)
		if t == "L"
			pos -= 1
		elsif t == "R"
			pos += 1
		end
		@direction = cardinal[pos % 4]
	end

	def to_s
		"Ranger is at #{x}, #{y}, #{direction}"
	end

end

def prompt(msg)
	puts msg
	input = gets
	exit if input.nil? or input.chomp.empty?
	input.chomp
end


size_x, size_y = prompt("Enter the plateau size as follows:\nX Y").split

loop do
	origin_x, origin_y, origin_direction = prompt("Enter the coordinates and the direction as follows:\nX Y D").split

	rover = Rover.new(origin_x, origin_y, origin_direction)
	puts rover

	series = prompt "Enter the series of moves and turns as follows:\nMMRMLMRML"

	series.each_char do |x|
		if x == "L" || x == "R" 
			rover.turn(x)		
		elsif series[x] == "M"
			rover.move
		else 
			puts "Their is something wrong with the entered instruction"
		end
		puts rover
	end

end

