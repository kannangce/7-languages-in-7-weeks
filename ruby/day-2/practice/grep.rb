def grep(fileName, stringToFind)
  File
    .open(fileName, "r") { |f|
      f.each_with_index { |line, index|  puts "#{index+1} -  #{line}" if line.match?(/#{Regexp.quote(stringToFind)}/)
    }}
end

# Assuming the pwd is ruby folder of this project.
grep "day-2/practice/grep.rb","file"

# Will print
# 1 -  def grep(fileName, stringToFind)
# 3 -      .open(fileName, "r") { |f|
# 8 -  grep "day-2/practice/grep.rb","file"