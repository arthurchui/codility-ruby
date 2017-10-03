def solution(a)
  return 1 if a.size == 0
  sum = a.reduce(:+)
  n = a.size + 1
  expected_sum = n * (n + 1) / 2
  diff = expected_sum - sum
  diff == 0 ? n + 1 : diff
end

def assert(a, e)
  res = solution(a)
  if res == e
    puts "CORRECT: f(#{a})"
  else
    puts "WRONG: f(#{a}) - got #{res}"
  end
end
