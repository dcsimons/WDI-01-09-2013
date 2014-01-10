# file path:

require './polygon'

class Quadrilateral < Polygon

	def initialize(side=4)
		@side = side
	end

	def get_sides(width, height)
		@width = width
		@height = height
	end

	def calc_perimeter
		perimeter = @width*2 + @height*2
		puts "The perimeter is #{perimeter}."
	end

end