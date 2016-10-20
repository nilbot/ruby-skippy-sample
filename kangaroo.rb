class Kangaroo
	attr_reader :name, :pos
	def initialize(name)
		@name = name
		@pos = Point.new(0,0)
    @steps = 0
	end
	def can_move?(side, grid)
		candidate = update(side)
		if grid.out_of_bound? candidate
			false
		else
			true
		end
	end
	def move!(side)
		@pos = update(side)
    @steps += 1
	end
  def arrived?(grid)
    @pos.x == grid.d - 1 && @pos.y == grid.d - 1
  end
  def steps_taken
    "number of hops: #{@steps}"
  end
	private
	def update(side)
		case side
		when :North
			Point.new(@pos.x,@pos.y+1)
		when :South
			Point.new(@pos.x,@pos.y-1)
		when :West
			Point.new(@pos.x-1,@pos.y)
		when :East
			Point.new(@pos.x+1,@pos.y)
		else
			nil
		end
	end
end
