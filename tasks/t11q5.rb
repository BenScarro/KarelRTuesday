#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

rndm1 = rand(1.. 50)

rndm2 = rand(1.. 50)

def game_sequence(rndm1, rndm2)
  puts("what is the sum of these two numbers?")
  puts(rndm1, rndm2)
  sum = rndm1 + rndm2
  answer = gets.chomp.to_i
  if answer == sum then
    puts("correct!")
  else
    puts("woops try again")
    game_sequence(rndm1, rndm2)
  end
end

game_sequence(rndm1, rndm2)



