def solution(a)
  h = {}
  max = 1
  a.each do |i|
    if i > 0
      h[i] = true
      max = [max, i].max
    end
  end
  return 1 if h.empty?
  for i in 1..max
    return i if h[i].nil?
  end
  max + 1
end
