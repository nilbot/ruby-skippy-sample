require_relative 'die.rb'
require_relative 'point.rb'
require_relative 'kangaroo.rb'
require_relative 'grid.rb'



skippy = Kangaroo.new(:skippy)
puts "#{skippy.name}'s current location: #{skippy.pos}"
grid = Grid.new(200)

mydie = Die.new(124)
this = mydie.throw_die
puts "die thrown: #{this}"
if skippy.can_move?(this, grid)
	puts "#{skippy.name} can move towards #{this}"
	skippy.move!(this)
	puts "#{skippy.name}'s new location: #{skippy.pos}"
else
	puts "#{skippy.name} can't move towards #{this}, trying again"
	again = mydie.throw_die
	puts "new throw: #{again}"
	if skippy.can_move?(again, grid)
		puts "now #{skippy.name} can move towards #{again}"
		skippy.move!(again)
		puts "#{skippy.name}'s new location: #{skippy.pos}"
	else
		puts 'aw well. tough luck'
	end
end

