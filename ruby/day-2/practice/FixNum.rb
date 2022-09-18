class Fixnum
# Its interesting to see that we can add methods to classes dynamically like this.
  def times
    i = self
    while i > 0
      i -= 1
      puts "calling times #{i}"
      yield self
    end
  end
end