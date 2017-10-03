def solution(s, p, q)
  raise ArgumentError if p.size != q.size

  # A hash contains 3 arrays that record
  # the last position of the type of nucleotide.
  # e.g. For "A***A**A", it becomes { "A" => [0,0,0,0,4,4,4,7] }
  # e.g. For "*C****C*", it becomes { "C" => [nil,1,1,1,1,1,6,6] }
  last_seens = { "A" => [], "C" => [], "G" => [] }
  s.each_char.with_index do |nucleotide, i|
    last_seens.keys.each do |key|
      if key == nucleotide
        last_seens[key][i] = i
      else
        last_seens[key][i] = last_seens[key][i-1]
      end
    end
  end

  res = []
  for i in 0..p.size-1
    factor = nil
    ['A', 'C', 'G'].each_with_index do |nucleotide, val|
      last_seen = last_seens[nucleotide][q[i]]
      if last_seen && last_seen >= p[i]
        factor = val + 1
        break
      end
    end
    res << (factor || 4)
  end
  res
end
