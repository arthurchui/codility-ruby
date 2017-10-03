def solution(a, b, k)
  first = a > 0 ? a % k + a : 0
  first = k if a > 0 && k > a 
  return 0 if first > b && a != 0
  last = b - b % k
  return 0 if b < first
  (last - first) / k + 1
end

def assert(a, b, k, e)
  res = solution(a, b, k)
  if res == e
    puts "CORRECT: f(#{a},#{b},#{k})"
  else
    puts "WRONG: f(#{a},#{b},#{k}) - got #{res}"
  end
end

#assert(0,0,1,1)
#assert(0,1,1,2)
#assert(1,1,1,1)
#assert(0,2,1,3)
#assert(0,1,11,1)
#assert(11,345,17,20)
#assert(0,2_000_000_000,1,2_000_000_001)
