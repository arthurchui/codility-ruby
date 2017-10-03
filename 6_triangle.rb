def solution(a)
  # As P < Q < R, it satisifies:
  # A[Q] + A[R] > A[P], and
  # A[R] + A[P] > A[Q]
  a.sort!

  # Find A[P] + A[Q] > A[R] with the
  # two biggest values below A[R]
  for i in 0..a.size-3
    return 1 if a[i] + a[i+1] > a[i+2]
  end
  0
end
