def solution(s)
  stack = []
  brackets = { ')' => '(', ']' => '[', '}' => '{' }
  s.chars.each do |c|
    stack.push(c) if brackets.values.include?(c)
    if brackets[c]
      return 0 if brackets[c] != stack[-1]
      stack.pop
    end
  end
  stack.empty? ? 1 : 0
end
