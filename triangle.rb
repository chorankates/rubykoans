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

   if a+b <= c or b+c <= a or a+c <= b # triangle inequality
      raise(TriangleError, 'triangle inequality')
   elsif a <= 0 or b <= 0 or c <= 0 # handles illegal lines 11,12
      raise(TriangleError, 'side length of less than 0')
   end

  if a == b and a ==c
    return :equilateral
  elsif (a == b and a != c) or (a == c and a !=b) or (b == c and b != a)
    return :isosceles
  elsif a != b and a != c and b != c
    return :scalene
  else
    return :unknown
  end
  
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
