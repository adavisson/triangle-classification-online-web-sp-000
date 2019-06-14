class Triangle
  # write code here
  
  attr_accessor :side_1, :side_2, :side_3
  
  def initialization(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end
  
  def kind
    if self.side_1 == self.side_2 && self.side_2 == self.side_3
      :equilateral
    end
  end
  
end
