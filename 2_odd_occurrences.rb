def solution(a)
  a.reduce(:^)
end

def assert(n, m)
  res = solution(n)
  if res == m
    puts "CORRECT: f(#{n},#{m})"
  else
    puts "WRONG: f(#{n},#{m}) - got #{res}"
  end
end
