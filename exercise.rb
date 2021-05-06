class Exercise

  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".
  def self.marklar(str)
    words = str.split(/\b/).map { |w| w.length > 4 ? subst_marklar(w) : w }
    return words.join()
  end

  def self.subst_marklar(w)
    if w =~ /^\w+$/
        return w =~ /^[A-Z]/ ? "Marklar" : "marklar"
    else
        return w # w is a non-word of length > 4, e.g. "??!?"
    end
  end

  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10
  def self.even_fibonacci(nth)
    curr = 1
    prev = 0
    sum = 0
    for i in 1..nth
      # upon starting each iteration, curr is the ith Fibonacci number
      # and prev is the (i-1)th.
      sum += curr if curr.even?
      nextFib = curr + prev
      prev = curr
      curr = nextFib
    end
    return sum
  end

end
