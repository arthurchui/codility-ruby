def solution(n, a)
  counters = [0] * n
  max = 0
  all_counters_identical = true
  a.each do |i|
    if i == n + 1
      counters = [max] * n unless all_counters_identical
      all_counters_identical = true
    else
      counters[i-1] += 1
      max = counters[i-1] if counters[i-1] > max
      all_counters_identical = false
    end
  end
  counters
end
