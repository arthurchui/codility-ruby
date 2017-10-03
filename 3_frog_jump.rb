def solution(x, y, d)
  ((y.to_f - x) / d).ceil
end

def assert(x, y, d, e)
  res = solution(x, y, d)
  if res == e
    puts "CORRECT: f(#{x},#{y},#{d})"
  else
    puts "WRONG: f(#{x},#{y},#{d}) - got #{res}"
  end
end
