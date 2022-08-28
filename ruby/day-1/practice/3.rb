

class GuessHandler
  def initialize(limit)
    @expected_number = rand(limit)
    @digit_pattern = /^\d+$/
    @terminating_string = "end"
  end

  def should_stop?(input)
    input.match?(@terminating_string) ||
      (valid_input?(input) && input.to_i == @expected_number)
  end

  def valid_input?(input)
    input.match?(@digit_pattern)
  end

  def handle_user_response(input)
    if @expected_number > input
      puts "Guess too low. Retry again"
    end
    if @expected_number < input
      puts "guess too high. Retry again"
    end
    if @expected_number == input
      puts "You guessed it right!"
    end
  end
end

limit = 10
handler = GuessHandler.new(limit)
puts "Enter a valid number from 0 to #{limit}. Enter `end` to exit."

while (input = STDIN.gets)
  puts "processing input #{input}"

  if handler.should_stop?(input)
    puts "Thanks for trying out!"
    break
  end
  unless handler.valid_input?(input)
    puts "Not a valid input. Please enter a valid input."
  end

  handler.handle_user_response(input.to_i)
end