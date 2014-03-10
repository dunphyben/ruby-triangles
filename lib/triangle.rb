class Triangle
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end


  def triangle_love

    if @side1 > 0 && @side2 > 0 && @side3 > 0

        if @side1 + @side2 < @side3 ||
          @side2 + @side3 < @side1 ||
          @side1 + @side3 < @side2
          "Dude, whatchu tryin' to do? Das not a triangle."

        elsif @side1 == @side2 && @side2 == @side3
          "Equilateral"
        elsif @side1 == @side2 || @side2 == @side3 || @side1 == @side3
          "Isosceles"
        elsif @side1 != @side2 && @side2 != @side3 && @side1 != @side3
          "Scalene"
        else
          "Not triangle"
        end
    else
      "Not a valid input"
    end
  end
end

