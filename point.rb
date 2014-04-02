class Line
	def initialize(p1, p2)
		@p1 = p1
		@p2 = p2
	end

	def to_s
		"(#{@x}, #{@y})"
	end
end

class Vector <Line
	def initialize(p1, p2, d)
		super(p1, p2)
		@d = d
	end
end

class Point

attr_reader :x, :y


def initialize(x,y)
	@x = x
	@y = y
end

def add(other_point)
	Point.new(@x + other_point.x, @y +other_point.y)
end



end

line =Line.new(Point.new(2,3), Point.new(4,5))
puts line