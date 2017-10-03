def solution(a, b)
  up_stream_fishes = []
  down_stream_survivals = 0

  for i in 0..a.count-1 do
    if b[i] == 0
      while up_stream_fishes.any? do
        if a[i] < up_stream_fishes.last
          break
        else
          up_stream_fishes.pop
        end
      end
      down_stream_survivals +=1 if up_stream_fishes.empty?
    else
      up_stream_fishes << a[i]
    end
  end

  down_stream_survivals + up_stream_fishes.count
end
