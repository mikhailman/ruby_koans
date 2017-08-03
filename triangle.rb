# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c) # WRITE THIS CODE
  raise TriangleError unless [a, b, c].select { |i| i <= 0 }.empty?
  raise TriangleError if (a >= b + c) || (b >= a + c) || (c >= a + b)
  return :equilateral if [a, b, c].uniq.size == 3
  return :isosceles if [a, b, c].uniq.size == 2
  return :scalene if [a, b, c].uniq.size == 1
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
