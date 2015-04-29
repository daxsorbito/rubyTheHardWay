# My own game

# A guessing game
# One person enters a combination of 3 digits
# Then the second person would guess it
# The game would give clues if the digits are close or some are close enough
# The second person would have 3 tries to guess it

class ClueGenerator
  def initialize(value1, value2, value3)
    @val1 = value1
    @val2 = value2
    @val3 = value3
  end

  def guessValues(value1, value2, value3)
    @guessVal1 = value1
    @guessVal2 = value2
    @guessVal3 = value3

    generateClues
  end

  def generateClues
    if matchValues
      puts "Yeah, what a lucky guess!!"
      return true
    elsif @val1 + @val2 + @val3 > @guessVal1 + @guessVal2 + @guessVal3
      puts "The sum of the hidden values is 'greater' than the sum of the guess values."
    elsif @val1 + @val2 + @val3 < @guessVal1 + @guessVal2 + @guessVal3
      puts "The sum of the hidden values is 'lesser' than the sum of the guess values."
    elsif @val1 + @val2 + @val3 = @guessVal1 + @guessVal2 + @guessVal3
      puts "The sum of the hidden values is 'equal' to the sum of the guess values."
    end
    return false
  end

  def matchValues
    @val1 == @guessVal1 && @val2 == @guessVal2 && @val3 == @guessVal3
  end
end

class Main
  more = true

  while more do
    puts "Welcome to my game!!!"
    puts "This game is not for simple-minded like me!!!"
    puts "Play and you will see..."
    puts '-' * 20

    @hiddenCode = []
    @guestCode = []
    puts "First player enter the first secret code:  > "
    @hiddenCode[0] = $stdin.gets.chomp.to_i

    puts "First player enter the 2nd secret code: > "
    @hiddenCode[1] = $stdin.gets.chomp.to_i

    puts "First player enter the 3rd secret code: > "
    @hiddenCode[2] = $stdin.gets.chomp.to_i


    puts "Now it's the second player's turn"

    attempt = 0
    guessed = false
    while attempt < 3 && !guessed do
      puts '-' * 20
      puts '-' * 20

      count = 0
      while count < 3 do
        puts "Enter the %s guess number: > " % count
        @guestCode[count] = $stdin.gets.chomp.to_i
        count += 1
      end

      cluegenerator = ClueGenerator.new(@hiddenCode[0], @hiddenCode[1], @hiddenCode[2])
      guessed = cluegenerator.guessValues(@guestCode[0], @guestCode[1], @guestCode[2])
      if !guessed
        attempt += 1
        puts "Try again!!!"
      end
    end


    puts "Want to play some more (y/n)?"
    answer = $stdin.gets.chomp
    more = answer.downcase == "y"
  end
end



