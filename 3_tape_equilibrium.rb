def solution(a)
  r_sum = a.reduce(:+) - a[0]
  l_sum = a[0]
  diff = (l_sum - r_sum).abs
  for i in 1..a.size-2
    r_sum -= a[i]
    l_sum += a[i]
    curr_diff = (l_sum - r_sum).abs
    diff = curr_diff if curr_diff < diff
  end
  diff
end
