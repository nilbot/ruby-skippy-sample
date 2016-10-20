class Die
	attr_reader :stats
	def initialize(seed = Random.new_seed)
		@r = Random.new(seed)
		@sides = [:North, :South, :West, :East]
		@stats = {}
		(0..3).each do |i|
			@stats[i] = 0
		end
	end
	def throw_die
		@up = @r.rand(0...4)
		@stats[@up] = @stats[@up] + 1
		side
	end
	def num_of_throws
		s = 0
		@stats.each do |key,value|
			s += value
		end
		"number of throws: #{s}"
	end
	private
	def side
		@sides[@up]
	end
end
