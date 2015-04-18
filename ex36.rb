# This is my own game exercise
def poop_game
  puts "How may times do you poop in a day?"

  print "> "
  poop_count = $stdin.gets.chomp.to_i

  if poop_count > 2 && poop_count < 4
    puts "Oh man, you've got plenty on your belly!"
  elsif poop_count >= 4
    puts "Go and see a doctor, that's just ain't right!"
  elsif poop_count > 0 && poop_count <= 2
    puts "Nice, you got a healthy belly!"
  elsif poop_count == 0
    puts "You're an alien, you dont' shit!!!!"
  else
    puts "Not shitting might have done something in your brain, go and shit!!!"
  end

  puts "Would like to play some more?"
  print "> "

  play_more = $stdin.gets.chomp.downcase
  if play_more == "yes" || play_more == "y"
    poop_game
  end
end

poop_game

