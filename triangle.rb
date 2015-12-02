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
def triangle(a, b, c)
  raise TriangleError.new('all sides must have a length > 0') unless [a,b,c].select { |e| e <= 1 }.empty?

  return :equilateral if a.eql?(b) and a.eql?(c)
  return :isosceles if (a.eql?(b) and ! a.eql?(c)) or (a.eql?(c) and ! a.eql?(b)) or (b.eql?(c) and ! b.eql?(a))
  :scalene
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
