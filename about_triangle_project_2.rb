require File.expand_path(File.dirname(__FILE__) + '/edgecase')

# You need to write the triangle method in the file 'triangle.rb'
require 'triangle.rb'

class TriangleError < RuntimeError
end

def triangle (a, b, c)

  # determine if we have invalid arguments
  begin
    if (a == 0 or b == 0 or c == 0)
      raise(TriangleError, "cannot have a side length of 0")
    elsif (a < 0 or b < 0 or c < 0)
      raise(TriangleError, "cannot have a side length of less than 0") # could be combined with above
    end
  end
  
  # seeded with triangle() from about_triangle_project.rb
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

class AboutTriangleProject2 < EdgeCase::Koan
  # The first assignment did not talk about how to handle errors.
  # Let's handle that part now.
  def test_illegal_triangles_throw_exceptions
    assert_raise(TriangleError) do triangle(0, 0, 0) end
    assert_raise(TriangleError) do triangle(3, 4, -5) end
    assert_raise(TriangleError) do triangle(1, 1, 3) end
    assert_raise(TriangleError) do triangle(2, 4, 2) end
    # HINT: for tips, see http://stackoverflow.com/questions/3834203/ruby-koan-151-raising-exceptions
 end
end

