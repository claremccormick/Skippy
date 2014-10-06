class Grid

  def lies_outside?
    if point.x_value > 9 || point.y_value > 9 || point.x_value < 0 || point.y_value < 0
      true
    else
      false
    end
  end

end
