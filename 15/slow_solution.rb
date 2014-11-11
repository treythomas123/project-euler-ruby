#!/usr/bin/ruby

# Solution to Project Euler problem 15
# By Trey Thomas
#
# | Starting in the top left corner of a 2×2 grid, and only being able to move
# | to the right and down, there are exactly 6 routes to the bottom right
# | corner.
# |
# |
# |
# | How many such routes are there through a 20×20 grid?
#
# First attempt -- this is too slow for 20x20 but it works fine for smaller
# grids. Will have to use math to reduce the problem or find an explicit
# solution, since 20x20 is apparently to big to reasonably count this way. 

require_relative 'node'


n = (ARGV[0] || 20).to_i + 1

grid = []

n.times do 
  row = []
  n.times { row.push(Node.new) }
  grid.push(row)
end

(0..n-1).each do |i|
  (0..n-1).each do |j|
    grid[i][j].right = grid[i][j+1] if j+1 < n
    grid[i][j].down = grid[i+1][j] if i+1 < n
  end
end

puts grid[0][0].paths_to(grid[-1][-1])

