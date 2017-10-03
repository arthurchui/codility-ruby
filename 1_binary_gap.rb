# https://codility.com/programmers/lessons/1-iterations/binary_gap/
def solution(n)
  max_count = 0
  current_count = 0
  started = false
  while n > 1 do
    if n % 2 == 0
      current_count += 1 if started
    elsif
      started = true
      max_count = current_count if current_count > max_count
      current_count = 0
    end
    n = n / 2
    if n <= 1
      max_count = current_count if current_count > max_count
      break
    end
  end
  max_count
end

def solution(n)
  a = n.to_s(2).gsub(/0*$/, '').split('1')[1..-1]
  a.nil? || a.empty? ? 0 : a.map(&:size).max
end
