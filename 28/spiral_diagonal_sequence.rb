class SpiralDiagonalSequence
  attr_reader :current

  def initialize
    @size = 1
    @next = 1
  end

  def next
    @current = @next
    @size += 2 if @current == @size**2
    @next += @size - 1
    return @current
  end
end

