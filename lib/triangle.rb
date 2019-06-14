class Triangle
  # write code here
  
  attr_accessor :side_1, :side_2, :side_3
  
  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end
  
  def kind
    
    if self.side_1 == 0 || self.side_2 == 0 || self.side_3 == 0
      begin
        raise TriangleError
      rescue TriangleError => error
        puts error.message
      end
    elsif self.side_1 == self.side_2 && self.side_2 == self.side_3
      :equilateral
    elsif self.side_1 == self.side_2 || self.side_1 == self.side_3 || self.side_2 == self.side_3
      :isosceles
    else 
      :scalene
    end
    
  end
  
  class TriangleError < StandardError
    def message
      "not a triangle"
    end
  end
  
end
