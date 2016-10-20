class Grid
  attr_reader :d
	def initialize(dim)
		@d = dim
	end
	def out_of_bound?(point)
		point.x < 0 || point.y < 0 || point.x >= @d || point.y >= @d
	end
end
