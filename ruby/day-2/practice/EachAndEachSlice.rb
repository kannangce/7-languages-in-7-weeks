(1...20).each { |item|
  print item
  print "\n" if item % 4 == 0 }

(1..20).each_slice(4) do |s|
  s.each { |i| print i }
  print "\n"
end

# each_slice returns array of