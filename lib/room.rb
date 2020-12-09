class Room

  def initialize(category, length, width)
    @category = category
    @length = length
    @width = width
    @is_painted = false
  end

  def category
    @category
  end

  def width
    @width.to_i
  end

  def area
    @length * width
  end

  def is_painted?
    @is_painted
  end

  def paint
    @is_painted = true
  end

end
