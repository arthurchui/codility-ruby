def solution(a)
  min = 10_001
  min_position = 0
  for i in 0..a.size - 2
    # slice of 2
    avg = (a[i] + a[i+1]).to_f / 2
    if avg < min
      min = avg
      min_position = i
    end

    # slice of 3
    next if i == a.size - 2
    avg = (a[i] + a[i+1] + a[i+2]).to_f / 3
    if avg < min
      min = avg
      min_position = i
    end
  end
  min_position
end
