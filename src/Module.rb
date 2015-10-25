module Circle

  PI = 3.141592653589793
  def Circle.area(radius)
    PI * radius**2
  end

  def Circle.circumference(radius)
    2 * PI * radius
  end
end

require 'module'

include Math #use PI instead of Math::PI

