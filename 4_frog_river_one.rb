def solution(x, a)
  h = Hash[(1..x).each_with_object(true).to_a]
  a.each_with_index do |i, time|
    h.delete(i)
    return time if h.empty?
  end
  -1
end
