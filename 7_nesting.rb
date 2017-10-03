def solution(s)
  bracket_count = 0
  s.chars.each do |char|
    if char == '('
      bracket_count += 1
    elsif char == ')'
      return 0 if bracket_count == 0
      bracket_count -= 1
    end
  end
  backet_count == 0 ? 1 : 0
end
