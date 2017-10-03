def solution(h)
  heights = []
  count = 0

  h.each do |current|
    # Remove all the heights higher than the current height
    while heights.any? && heights[-1] > current do
      heights.pop
    end

    # Ignore if the height exists
    next if heights.any? && heights[-1] == current

    # A new block is needed for the new height
    heights << current
    count += 1
  end

  count
end
