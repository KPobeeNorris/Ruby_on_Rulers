class Array
  def sum(start = 0)
    inject(start, &:+)
  end

  def add(a, b)
    a + b
  end

  def subtract(a, b)
    a - b
  end
end
