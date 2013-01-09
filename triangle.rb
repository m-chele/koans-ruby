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
	sides = [a, b, c].sort
	
	if (c==0)
		raise TriangleError	, "tutti a zero!"
	end
	#if (sides.select{|s| s < 0}.size > 0)
	if(sides[0] < 0)
		raise TriangleError, "almeno uno minore di zero!"
	end
	if(sides[0] + sides[1] <= sides[2])
		raise TriangleError, "la somma dei lati più corti deve essere maggiore del lato più lungo!"
	end
	
	result = :scalene
	result = :equilateral if sides.uniq.size == 1
	result = :isosceles if sides.uniq.size == 2
	return result
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
