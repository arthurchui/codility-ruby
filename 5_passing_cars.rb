def solution(a)
  count = 0
  count_0 = 0
  started = false
  a.each do  |dir|
    next if dir == 1 && !started
    started = true
    dir == 0 ? count_0 += 1 : count += count_0
    return -1 if count > 1_000_000_000
  end
  count
end

def assert(a, e)
  res = solution(a)
  if res == e
    puts "CORRECT: f(#{a})"
  else
    puts "WRONG: f(#{a}) - got #{res}"
  end
end

#assert([0], 0)
#assert([0,1,1], 2)
#assert([1,0,1], 1)
#assert([1,0,0], 0)
#assert([0,1,1,0,1], 4)
#assert([0,1,1,1,0], 3)
#assert([1,0,1,1,0], 2)
#assert([1,1,0,1,0], 1)
#assert([1,1,1,0,0], 0)
#assert([0,0,1,1,1], 6)
#assert([0,1,0,1,1], 5)
