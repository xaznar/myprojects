def circle_area(radius)
  # TODO: Implement the `circle_area` method
  if radius.negative?
    return 0
  else
    3.14 * radius * radius
  end
end
puts circle_area(0)
puts circle_area(1)
puts circle_area(5)
puts circle_area(-1)
