#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

rndm = rand(1.. 100)

def guess_sequence(rndm)
  guess = gets.chomp.to_i
  if guess == rndm then
    puts("you win")
  elsif guess > rndm 
    puts("too high, guess again")
    guess_sequence(rndm)
  elsif guess < rndm
    puts("too low, guess again")
    guess_sequence(rndm)
  end
end

guess_sequence(rndm)
