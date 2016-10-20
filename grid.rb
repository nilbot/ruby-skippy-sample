class Grid
	def initialize(dim)
		@d = dim
	end
	def out_of_bound?(point)
		point.x < 0 || point.y < 0 || point.x >= @d || point.y >= @d
	end
end